# Benchmark Results (auto-generated at 2017-06-08T06:27:12.018577Z UTC)
Simulating 5 concurrent connection(s).

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
  * **requests/second:** 4504.80
  * **total requests:** 22524
  * **data read:** 22.5 kB
  * **average latency:** 732.75us
### angel
  * **requests/second:** 4114.20
  * **total requests:** 20571
  * **data read:** 20.6 kB
  * **average latency:** 850.06us
### aqueduct
  * **requests/second:** 857.00
  * **total requests:** 4285
  * **data read:** 4.28 kB
  * **average latency:** 4.70ms
### shelf
  * **requests/second:** 4604.60
  * **total requests:** 23023
  * **data read:** 23.0 kB
  * **average latency:** 741.61us
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 732.75
shelf | 741.61
angel | 850.06
aqueduct | 4702.89
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **741.61us (0.74ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:00:05.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T02:27:37.785482 UTC.*
