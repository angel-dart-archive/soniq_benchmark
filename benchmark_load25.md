# Benchmark Results (auto-generated at 2017-06-08T06:28:03.432167Z UTC)
Simulating 25 concurrent connection(s).

*All tests are run for 0:00:05.000000 (5000ms).*
## Framework(s) Tested (4)
  * `dart:io` (reference point, not a framework)
  * `angel`
  * `aqueduct`
  * `shelf`
## Contents
  * [Test Cases](#test-cases)
  * [Rankings](#rankings)
  * [Conclusion](#conclusion)
# Test Cases
## hello
Endpoint: `/hello`
### dart:io
  * **requests/second:** 5756.60
  * **total requests:** 28783
  * **data read:** 16.2 kB
  * **average latency:** 2.79ms
### angel
  * **requests/second:** 4638.00
  * **total requests:** 23190
  * **data read:** 15.8 kB
  * **average latency:** 3.83ms
### aqueduct
  * **requests/second:** 921.00
  * **total requests:** 4605
  * **data read:** 3.39 kB
  * **average latency:** 22.56ms
### shelf
  * **requests/second:** 5058.40
  * **total requests:** 25292
  * **data read:** 16.6 kB
  * **average latency:** 3.46ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 2792.44
shelf | 3459.39
angel | 3831.49
aqueduct | 22562.28
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **3459.39us (3.46ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:00:05.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T02:28:28.728376 UTC.*
