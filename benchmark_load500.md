# Benchmark Results (auto-generated at 2017-06-08T06:29:45.915041Z UTC)
Simulating 500 concurrent connection(s).

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
  * **requests/second:** 3831.00
  * **total requests:** 19155
  * **data read:** 1.14 kB
  * **average latency:** 87.26ms
### angel
  * **requests/second:** 3464.00
  * **total requests:** 17320
  * **data read:** 1.76 kB
  * **average latency:** 105.02ms
### aqueduct
  * **requests/second:** 802.80
  * **total requests:** 4014
  * **data read:** 805 B
  * **average latency:** 474.36ms
### shelf
  * **requests/second:** 3397.00
  * **total requests:** 16985
  * **data read:** 1.20 kB
  * **average latency:** 100.38ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 87261.14
shelf | 100380.33
angel | 105024.88
aqueduct | 474357.69
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **100380.33us (100.38ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:00:05.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T02:30:12.302310 UTC.*
