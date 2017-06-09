# Benchmark Results (auto-generated at 2017-06-09T01:30:15.796259Z UTC)
Simulating 150 concurrent connection(s).

*All tests are run for 0:01:00.000000 (60000ms).*
## Framework(s) Tested (3)
  * `dart:io` (reference point, not a framework)
  * `shelf` (reference point, not a framework)
  * `angel`
## Contents
  * [Test Cases](#test-cases)
  * [Rankings](#rankings)
  * [Overall Conclusion](#overall-conclusion)
# Test Cases
## hello
Endpoint: `/hello`
### dart:io
  * **requests/second:** 9604.02
  * **total requests:** 576241
  * **data read:** 94.4 kB
  * **average latency:** 10.94ms
### shelf
  * **requests/second:** 8420.27
  * **total requests:** 505216
  * **data read:** 76.3 kB
  * **average latency:** 12.69ms
### angel
  * **requests/second:** 7921.25
  * **total requests:** 475275
  * **data read:** 68.7 kB
  * **average latency:** 13.89ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 10944.24
shelf | 12685.61
angel | 13885.14
### Conclusion
After running hello, the fastest framework was `angel`.
  * Average latency of **13885.14us (13.89ms)**.
## route_param
Endpoint: `/route_param/foo`
### dart:io
  * **requests/second:** 9320.83
  * **total requests:** 559250
  * **data read:** 92.5 kB
  * **average latency:** 11.45ms
### shelf
  * **requests/second:** 8660.48
  * **total requests:** 519629
  * **data read:** 84.0 kB
  * **average latency:** 12.86ms
### angel
  * **requests/second:** 6694.87
  * **total requests:** 401692
  * **data read:** 62.9 kB
  * **average latency:** 16.71ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 11447.38
shelf | 12860.57
angel | 16714.38
### Conclusion
After running route_param, the fastest framework was `angel`.
  * Average latency of **16714.38us (16.71ms)**.
# Rankings
  1. `angel`
# Overall Conclusion
After running 2 test(s) for 0:01:00.000000 each, the fastest framework was `angel`, with 2 win(s).

*Done at 2017-06-08T21:36:28.115796 UTC.*
