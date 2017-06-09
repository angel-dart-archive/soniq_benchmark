# Benchmark Results (auto-generated at 2017-06-09T01:48:52.711856Z UTC)
Simulating 650 concurrent connection(s).

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
  * **requests/second:** 9333.92
  * **total requests:** 560035
  * **data read:** 21.8 kB
  * **average latency:** 45.08ms
### shelf
  * **requests/second:** 8394.50
  * **total requests:** 503670
  * **data read:** 23.3 kB
  * **average latency:** 53.44ms
### angel
  * **requests/second:** 7125.63
  * **total requests:** 427538
  * **data read:** 19.1 kB
  * **average latency:** 64.44ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 45084.93
shelf | 53435.78
angel | 64437.10
### Conclusion
After running hello, the fastest framework was `angel`.
  * Average latency of **64437.10us (64.44ms)**.
## route_param
Endpoint: `/route_param/foo`
### dart:io
  * **requests/second:** 9458.87
  * **total requests:** 567532
  * **data read:** 22.8 kB
  * **average latency:** 44.76ms
### shelf
  * **requests/second:** 7458.42
  * **total requests:** 447505
  * **data read:** 21.1 kB
  * **average latency:** 60.16ms
### angel
  * **requests/second:** 6501.87
  * **total requests:** 390112
  * **data read:** 17.8 kB
  * **average latency:** 71.72ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 44758.12
shelf | 60162.38
angel | 71717.29
### Conclusion
After running route_param, the fastest framework was `angel`.
  * Average latency of **71717.29us (71.72ms)**.
# Rankings
  1. `angel`
# Overall Conclusion
After running 2 test(s) for 0:01:00.000000 each, the fastest framework was `angel`, with 2 win(s).

*Done at 2017-06-08T21:55:05.599706 UTC.*
