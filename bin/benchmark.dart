import 'dart:io';
import 'package:angel_benchmark/src/angel/angel.dart' as angel_framework;
import 'package:angel_benchmark/src/aqueduct/aqueduct.dart' as aqueduct;
import 'package:angel_benchmark/src/io/io.dart' as dart_io;
import 'package:angel_benchmark/src/common.dart';
import 'package:angel_benchmark/src/shelf/shelf.dart' as shelf;
import 'package:soniq/soniq.dart';
import 'package:tuple/tuple.dart';

const Map<String, Framework> FRAMEWORKS = const {
  '!dart:io': dart_io.createServer,
  // Not going to count shelf as a framework, because it is a library.
  // Where as Angel or Aqueduct provides functionality out of the box,
  // Any complex features in shelf you basically implement yourself.
  //
  // In that sense, it's "raw".
  '!shelf': shelf.createServer,
  'angel': angel_framework.createServer,

  // Aqueduct seems to not want to terminate, and crashes the Dart executable.
  // So for now, we'll skip it, and just measure Angel?
  // 'aqueduct': aqueduct.createServer
};

const Map<String, String> TEST_CASES = const {
  'hello': '/hello',
  'route_param': '/route_param/foo'
};

main(List<String> args) async {
  // Create proper loads
  List<int> LOADS = [];
  var nIsolates = Platform.numberOfProcessors;

  int prevLoad, currentLoad = 50;

  do {
    var load = currentLoad + (prevLoad ?? 0);
    LOADS.add(load);
    prevLoad = currentLoad;
    currentLoad = load;
  } while ((currentLoad / nIsolates) <=
      250); // Limit to load 250x num. processor cores.

  print('Running at the following loads: $LOADS');

  // Choose running time
  int runMs = 60000;

  if (args.isNotEmpty) {
    try {
      runMs = int.parse(args.first);
    } catch (e) {
      // Ignore parse failure.
    }
  }

  print('All tests will run for ${runMs}ms.');

  var rootConfig = new Configuration.merge(Configuration.DEFAULT,
      new Configuration(duration: new Duration(milliseconds: runMs)));
  print('Available cores: ${nIsolates}');

  Map<String, int> globalWins = {};
  Map<String, List<double>> averageLatencies = {};

  for (int load in LOADS) {
    print(
        '---------- SIMULATED LOAD: $load CONCURRENT CONNECTION(S) ----------');
    var file = new File('benchmark_load$load.md');
    var sink = file.openWrite();
    var loadConfig = new Configuration.merge(
        rootConfig, new Configuration(connections: load));
    Map<String, int> wins = {};

    var now = new DateTime.now();
    sink.writeln('# Benchmark Results (auto-generated at ${now.toUtc()
            .toIso8601String()} UTC)');
    sink.writeln('Simulating $load concurrent connection(s).\n');
    sink.writeln(
        '*All tests are run for ${loadConfig.duration} (${loadConfig.duration
            .inMilliseconds}ms).*');
    sink.writeln('## Framework(s) Tested (${FRAMEWORKS.length})');

    for (var frameworkName in FRAMEWORKS.keys) {
      if (!frameworkName.startsWith('!'))
        sink.writeln('  * `$frameworkName`');
      else {
        var name = frameworkName.substring(1);
        sink.writeln('  * `$name` (reference point, not a framework)');
      }
    }

    sink
      ..writeln('## Contents')
      ..writeln('  * [Test Cases](#test-cases)')
      ..writeln('  * [Rankings](#rankings)')
      ..writeln('  * [Overall Conclusion](#overall-conclusion)');

    sink.writeln('# Test Cases');

    for (var testCaseName in TEST_CASES.keys) {
      Map<String, double> timing = {};
      var uri = TEST_CASES[testCaseName];
      sink.writeln('## $testCaseName\nEndpoint: `$uri`');
      print('Testing `$testCaseName` at "$uri"');

      for (var frameworkName in FRAMEWORKS.keys) {
        var generator = FRAMEWORKS[frameworkName];
        var name = frameworkName.startsWith('!')
            ? frameworkName.substring(1)
            : frameworkName;
        Tuple2<String, Closer> tuple =
            await generator(nIsolates);
        var baseUrl = tuple.item1;
        var closer = tuple.item2;
        print('$name listening at $baseUrl');

        var config = new Configuration.merge(
            loadConfig, new Configuration(url: '$baseUrl$uri'));
        var runner = new Runner(config);
        var report = await runner.run();
        await closer();

        sink
          ..writeln('### $name')
          ..writeln('  * **requests/second:** ' +
              (report.totalRequests / config.duration.inSeconds)
                  .toStringAsFixed(2))
          ..writeln('  * **total requests:** ${report.totalRequests}')
          ..writeln('  * **data read:** ${report.transfer}');

        if (report.averageLatency >= 1000)
          sink.writeln(
              '  * **average latency:** ${(report.averageLatency / 1000)
                  .toStringAsFixed(2)}ms');
        else
          sink.writeln(
              '  * **average latency:** ${report.averageLatency.toStringAsFixed(
                  2)}us');

        if (report.socketErrors > 0)
          sink.writeln('  * **socket errors:** ${report.socketErrors}');

        timing[frameworkName] = report.averageLatency;

        if (averageLatencies.containsKey(frameworkName))
          averageLatencies[frameworkName].add(report.averageLatency);
        else
          averageLatencies[frameworkName] = [report.averageLatency];
      }

      if (timing.isNotEmpty) {
        sink.writeln('### Data Table');
        sink.writeln('* Sorted from fastest to slowest\n');
        sink.writeln('Name | Average Latency (microseconds)');
        sink.writeln('---- | ----');

        var sortedNames = timing.keys.toList()
          ..sort((a, b) => timing[a].compareTo(timing[b]));

        for (var frameworkName in sortedNames) {
          var name = frameworkName.startsWith('!')
              ? frameworkName.substring(1)
              : frameworkName;
          sink.writeln('$name | ' + timing[frameworkName].toStringAsFixed(2));
        }

        sink.writeln('### Conclusion');
        String fastestName;
        double lowestAverage;

        for (var frameworkName in timing.keys) {
          var avg = timing[frameworkName];

          if (!frameworkName.startsWith('!') &&
              (lowestAverage == null || avg < lowestAverage)) {
            fastestName = frameworkName;
            lowestAverage = avg;
          }
        }

        if (fastestName == null)
          sink.writeln('The benchmarks were **inconclusive**. Oh, the horror!');
        else {
          var us = lowestAverage.toStringAsFixed(2);
          var ms = (lowestAverage / 1000).toStringAsFixed(2);
          sink.writeln(
              'After running $testCaseName, the fastest framework was `$fastestName`.');
          sink.writeln('  * Average latency of **${us}us (${ms}ms)**.');

          if (!wins.containsKey(fastestName))
            wins[fastestName] = 1;
          else
            wins[fastestName]++;
        }
      }
    }

    if (wins.isNotEmpty) {
      sink.writeln('# Rankings');
      var rankings = wins.keys.toList()
        ..sort((a, b) {
          return wins[b].compareTo(wins[a]);
        });

      // Add others
      List<String> losers = [];

      for (var frameworkName in FRAMEWORKS.keys) {
        if (!frameworkName.startsWith('!') && !rankings.contains(frameworkName))
          losers.add(frameworkName);
      }

      for (int i = 0; i < rankings.length; i++) {
        sink.writeln('  ${i + 1}. `${rankings[i]}`');
      }

      if (losers.isNotEmpty) {
        sink.writeln('## Not ranked:');
        losers.forEach((s) => sink.writeln('  * `$s`'));
      }
    }

    sink.writeln('# Overall Conclusion');
    String fastestName;
    int mostWins;

    for (var frameworkName in wins.keys) {
      var nWins = wins[frameworkName];

      if (!frameworkName.startsWith('!') &&
          (mostWins == null || (nWins > 0 && nWins > mostWins))) {
        fastestName = frameworkName;
        mostWins = nWins;
      }
    }

    if (fastestName == null)
      sink.writeln('The benchmarks were **inconclusive**. Oh, the horror!');
    else {
      sink.writeln('After running ${TEST_CASES.length} test(s) for ${loadConfig
              .duration} each, the fastest framework was `$fastestName`, with $mostWins win(s).');

      if (!globalWins.containsKey(fastestName))
        globalWins[fastestName] = 1;
      else
        globalWins[fastestName]++;
    }

    now = new DateTime.now();
    sink.writeln('\n*Done at ${now.toIso8601String()} UTC.*');
    await sink.close();
    stdout.writeln();
  }

  var sink = new File('benchmark.md').openWrite();

  var now = new DateTime.now();
  sink.writeln('# Benchmark Overview (auto-generated at ${now.toUtc()
      .toIso8601String()} UTC)');
  sink.writeln(
      '*All tests are run for ${rootConfig.duration} (${rootConfig.duration
          .inMilliseconds}ms).*');

  sink
    ..writeln('\nThis benchmark was run on a system with the following specs:')
    ..writeln('  * **OS:** ${Platform.operatingSystem}')
    ..writeln(
        '  * **Number of Processor Cores:** ${Platform.numberOfProcessors}')
    ..writeln('  * **Dart SDK Version:** ${Platform.version}');

  sink
    ..writeln('## Framework(s) Tested (${FRAMEWORKS.length})')
    ..writeln(
        'Each framework ran concurrently in ${nIsolates} isolate(s).\n');

  for (var frameworkName in FRAMEWORKS.keys) {
    if (!frameworkName.startsWith('!'))
      sink.writeln('  * `$frameworkName`');
    else {
      var name = frameworkName.substring(1);
      sink.writeln('  * `$name` (reference point, not a framework)');
    }
  }

  sink.writeln('# Conclusion');
  if (globalWins.isEmpty) {
    sink.writeln('The benchmarks as a whole were *inconclusive*. :(');
  } else {
    var rankings = globalWins.keys.toList()
      ..sort((a, b) {
        return globalWins[b].compareTo(globalWins[a]);
      });
    sink.writeln(
        'These are the fastest frameworks, ordered by how many load simulations they won:');
    for (int i = 0; i < rankings.length; i++) {
      var avg = average(averageLatencies[rankings[i]]);
      sink.writeln(
          '  ${i + 1}. `${rankings[i]}` (${globalWins[rankings[i]]} win(s)) - **average ${(avg / 1000).toStringAsFixed(2)}ms**');
    }
  }

  var losers = FRAMEWORKS.keys
      .where((k) => !k.startsWith('!') && !globalWins.containsKey(k));

  if (losers.isNotEmpty) {
    sink.writeln(
        '\nThe following were not fast enough, on average, to win any load simulation.');
    sink.writeln('Here they are, in no particular order:');

    for (var loser in losers) {
      var avg = average(averageLatencies[loser]);
      sink.writeln(
          '  * `$loser` - **average ${(avg / 1000).toStringAsFixed(2)}ms**');
    }
  }

  var references = FRAMEWORKS.keys.where((k) => k.startsWith('!'));

  if (references.isNotEmpty) {
    sink.writeln('\nHere are the average latencies of the reference point(s):');

    for (var ref in references) {
      var avg = average(averageLatencies[ref]);
      var name = ref.substring(1);
      sink.writeln(
          '`$name` - **average ${(avg / 1000).toStringAsFixed(2)}ms**');
    }
  }

  await sink.close();
  print('Benchmarking done!!!');
}
