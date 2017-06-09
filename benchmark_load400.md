# Benchmark Results (auto-generated at 2017-06-09T01:42:40.516421Z UTC)
Simulating 400 concurrent connection(s).

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
  * **requests/second:** 10117.53
  * **total requests:** 607052
  * **data read:** 39.1 kB
  * **average latency:** 26.74ms
### shelf
  * **requests/second:** 7845.12
  * **total requests:** 470707
  * **data read:** 24.8 kB
  * **average latency:** 34.24ms
### angel
  * **requests/second:** 7802.67
  * **total requests:** 468160
  * **data read:** 30.9 kB
  * **average latency:** 36.38ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 26739.74
shelf | 34239.97
angel | 36378.91
### Conclusion
After running hello, the fastest framework was `angel`.
  * Average latency of **36378.91us (36.38ms)**.
## route_param
Endpoint: `/route_param/foo`
### dart:io
  * **requests/second:** 8583.57
  * **total requests:** 515014
  * **data read:** 35.6 kB
  * **average latency:** 31.32ms
### shelf
  * **requests/second:** 8176.65
  * **total requests:** 490599
  * **data read:** 34.0 kB
  * **average latency:** 34.53ms
### angel
  * **requests/second:** 6886.10
  * **total requests:** 413166
  * **data read:** 26.2 kB
  * **average latency:** 42.09ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 31323.82
shelf | 34529.60
angel | 42089.18
### Conclusion
After running route_param, the fastest framework was `angel`.
  * Average latency of **42089.18us (42.09ms)**.
# Rankings
  1. `angel`
# Overall Conclusion
After running 2 test(s) for 0:01:00.000000 each, the fastest framework was `angel`, with 2 win(s).

*Done at 2017-06-08T21:48:52.676763 UTC.*
