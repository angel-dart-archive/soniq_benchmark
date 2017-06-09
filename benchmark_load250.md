# Benchmark Results (auto-generated at 2017-06-09T01:36:28.172447Z UTC)
Simulating 250 concurrent connection(s).

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
  * **requests/second:** 9802.85
  * **total requests:** 588171
  * **data read:** 61.0 kB
  * **average latency:** 17.17ms
### shelf
  * **requests/second:** 8087.88
  * **total requests:** 485273
  * **data read:** 47.7 kB
  * **average latency:** 21.50ms
### angel
  * **requests/second:** 7896.38
  * **total requests:** 473783
  * **data read:** 44.4 kB
  * **average latency:** 22.78ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 17168.56
shelf | 21500.40
angel | 22780.80
### Conclusion
After running hello, the fastest framework was `angel`.
  * Average latency of **22780.80us (22.78ms)**.
## route_param
Endpoint: `/route_param/foo`
### dart:io
  * **requests/second:** 8855.17
  * **total requests:** 531310
  * **data read:** 50.2 kB
  * **average latency:** 19.22ms
### shelf
  * **requests/second:** 8688.28
  * **total requests:** 521297
  * **data read:** 50.5 kB
  * **average latency:** 20.77ms
### angel
  * **requests/second:** 6615.27
  * **total requests:** 396916
  * **data read:** 40.6 kB
  * **average latency:** 28.03ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 19217.34
shelf | 20771.24
angel | 28028.21
### Conclusion
After running route_param, the fastest framework was `angel`.
  * Average latency of **28028.21us (28.03ms)**.
# Rankings
  1. `angel`
# Overall Conclusion
After running 2 test(s) for 0:01:00.000000 each, the fastest framework was `angel`, with 2 win(s).

*Done at 2017-06-08T21:42:40.497370 UTC.*
