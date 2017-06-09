# Benchmark Results (auto-generated at 2017-06-09T01:24:02.715688Z UTC)
Simulating 100 concurrent connection(s).

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
  * **requests/second:** 9388.47
  * **total requests:** 563308
  * **data read:** 132 kB
  * **average latency:** 7.62ms
### shelf
  * **requests/second:** 8727.77
  * **total requests:** 523666
  * **data read:** 105 kB
  * **average latency:** 8.27ms
### angel
  * **requests/second:** 7241.08
  * **total requests:** 434465
  * **data read:** 98.0 kB
  * **average latency:** 10.23ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 7620.18
shelf | 8265.79
angel | 10231.46
### Conclusion
After running hello, the fastest framework was `angel`.
  * Average latency of **10231.46us (10.23ms)**.
## route_param
Endpoint: `/route_param/foo`
### dart:io
  * **requests/second:** 9701.18
  * **total requests:** 582071
  * **data read:** 124 kB
  * **average latency:** 7.33ms
### shelf
  * **requests/second:** 7670.18
  * **total requests:** 460211
  * **data read:** 95.9 kB
  * **average latency:** 9.43ms
### angel
  * **requests/second:** 7160.12
  * **total requests:** 429607
  * **data read:** 90.6 kB
  * **average latency:** 10.47ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 7327.69
shelf | 9430.92
angel | 10468.27
### Conclusion
After running route_param, the fastest framework was `angel`.
  * Average latency of **10468.27us (10.47ms)**.
# Rankings
  1. `angel`
# Overall Conclusion
After running 2 test(s) for 0:01:00.000000 each, the fastest framework was `angel`, with 2 win(s).

*Done at 2017-06-08T21:30:15.743118 UTC.*
