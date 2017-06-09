import 'dart:async';
import 'dart:io';
import 'package:aqueduct/aqueduct.dart';
import 'package:cli_util/cli_logging.dart' as c;
import 'package:tuple/tuple.dart';
import '../common.dart';

int PORT = 3000;

Future<Tuple2<String, Closer>> createServer(int nIsolates) async {
  var app = new Application<BenchmarkRequestSink>();
  var config = new ApplicationConfiguration()
    ..address = InternetAddress.LOOPBACK_IP_V4
    ..port = PORT;
  app.configuration = config;
  return app.start(numberOfInstances: nIsolates).then((_) {
    return new Tuple2('http://${config.address.address}:${config.port}', () {
      var logger = new c.Logger.standard();
      var p = logger.progress('Stopping Aqueduct');
      var sw = new Stopwatch();
      return app.stop().then((_) {
        sw.stop();
        p.finish(
            message:
                'Stopped Aqueduct after ${sw.elapsedMilliseconds}ms (${(sw.elapsedMicroseconds / 1000).round()}s).',
            showTiming: true);
      });
    });
  });
}

class BenchmarkRequestSink extends RequestSink {
  BenchmarkRequestSink(ApplicationConfiguration configuration)
      : super(configuration);

  @override
  void setupRouter(Router router) {
    router
      ..route('/hello').generate(() => new HelloController())
      ..route('/route_param/:name').generate(() => new RouteParamController());
  }
}

class HelloController extends HTTPController {
  @httpGet
  Future<Response> getHello() async {
    return new Response.ok('Hello, world!',
        headers: {HttpHeaders.CONTENT_TYPE: ContentType.JSON.mimeType});
  }
}

class RouteParamController extends HTTPController {
  @httpGet
  Future<Response> getNameParam(@HTTPPath('name') String name) async {
    return new Response.ok({'name': name});
  }
}
