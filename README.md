# benchmark
Auto-generated benchmarks, using
[`soniq`](https://github.com/thosakwe/soniq).

Please consider forking/cloning and running the benchmarks yourself.
No, really.

To run:

```bash
dart bin/benchmark.dart
```

It will generate benchmark summary files.

Give it several minutes to run. 
Each benchmark runs three trials per framework, *per test case*, each lasting 1 minute.

The simulated load numbers are determined based on the number of cores your
processor has.

In a rush? Run tests for less time by specifying a number of milliseconds:

```bash
# Run for 5 seconds only
dart bin/benchmark.dart 5000
```

# Interpretation
As you can imagine, the numbers are dependent on a number of factors, which
greatly vary across systems. Thus, latency numbers alone are only comparable to
numbers from benchmarks run on the same machine.

However, the latency numbers should be proportional, so in general, the top framework
will perform accordingly on any machine.

# Test Cases

## hello
Basic test, just tests a framework's ability to JSON encode data.
Expected response: `"Hello, world!""`.

## route_param
Tests a framework's ability to parse route parameters. The route should be declared
with a pattern like `/route_param/:name`, and when called,
return the following dynamic response:

```json
{"name": "<the name parameter>"}
```