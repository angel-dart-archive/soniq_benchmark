# Benchmark Results (auto-generated at 2017-06-08T08:13:52.362291Z UTC)
Simulating 250 concurrent connection(s).

*All tests are run for 0:05:00.000000 (300000ms).*
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
  * **requests/second:** 7596.89
  * **total requests:** 2279068
  * **data read:** 642 kB
  * **average latency:** 30.80ms
### angel
  * **requests/second:** 5647.46
  * **total requests:** 1694238
  * **data read:** 718 kB
  * **average latency:** 42.50ms
### aqueduct
  * **requests/second:** 841.38
  * **total requests:** 252415
  * **data read:** 23.5 kB
  * **average latency:** 186.54ms
### shelf
  * **requests/second:** 6490.12
  * **total requests:** 1947036
  * **data read:** 798 kB
  * **average latency:** 36.98ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 30801.77
shelf | 36979.91
angel | 42498.90
aqueduct | 186536.97
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **36979.91us (36.98ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:05:00.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T04:33:59.018521 UTC.*
