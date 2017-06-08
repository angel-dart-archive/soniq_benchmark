# Benchmark Results (auto-generated at 2017-06-08T06:28:54.246480Z UTC)
Simulating 100 concurrent connection(s).

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
  * **requests/second:** 5733.40
  * **total requests:** 28667
  * **data read:** 6.80 kB
  * **average latency:** 11.11ms
### angel
  * **requests/second:** 3942.20
  * **total requests:** 19711
  * **data read:** 6.83 kB
  * **average latency:** 18.45ms
### aqueduct
  * **requests/second:** 889.40
  * **total requests:** 4447
  * **data read:** 2.00 kB
  * **average latency:** 93.78ms
### shelf
  * **requests/second:** 4497.00
  * **total requests:** 22485
  * **data read:** 6.87 kB
  * **average latency:** 15.26ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 11113.49
shelf | 15262.20
angel | 18445.94
aqueduct | 93777.87
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **15262.20us (15.26ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:00:05.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T02:29:19.744081 UTC.*
