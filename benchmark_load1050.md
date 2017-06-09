# Benchmark Results (auto-generated at 2017-06-09T01:55:05.621263Z UTC)
Simulating 1050 concurrent connection(s).

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
  * **requests/second:** 8457.57
  * **total requests:** 507454
  * **data read:** 12.9 kB
  * **average latency:** 77.49ms
### shelf
  * **requests/second:** 7973.83
  * **total requests:** 478430
  * **data read:** 14.8 kB
  * **average latency:** 88.38ms
### angel
  * **requests/second:** 5966.25
  * **total requests:** 357975
  * **data read:** 10.3 kB
  * **average latency:** 119.54ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 77485.25
shelf | 88380.04
angel | 119544.19
### Conclusion
After running hello, the fastest framework was `angel`.
  * Average latency of **119544.19us (119.54ms)**.
## route_param
Endpoint: `/route_param/foo`
### dart:io
  * **requests/second:** 8525.57
  * **total requests:** 511534
  * **data read:** 14.6 kB
  * **average latency:** 77.47ms
### shelf
  * **requests/second:** 7672.12
  * **total requests:** 460327
  * **data read:** 14.4 kB
  * **average latency:** 91.24ms
### angel
  * **requests/second:** 5941.55
  * **total requests:** 356493
  * **data read:** 10.8 kB
  * **average latency:** 125.78ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 77468.84
shelf | 91240.31
angel | 125784.30
### Conclusion
After running route_param, the fastest framework was `angel`.
  * Average latency of **125784.30us (125.78ms)**.
# Rankings
  1. `angel`
# Overall Conclusion
After running 2 test(s) for 0:01:00.000000 each, the fastest framework was `angel`, with 2 win(s).

*Done at 2017-06-08T22:01:19.518009 UTC.*
