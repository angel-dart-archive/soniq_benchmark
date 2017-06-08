# Benchmark Results (auto-generated at 2017-06-08T07:53:46.136935Z UTC)
Simulating 100 concurrent connection(s).

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
  * **requests/second:** 8012.34
  * **total requests:** 2403701
  * **data read:** 1.18 MB
  * **average latency:** 11.59ms
### angel
  * **requests/second:** 6669.82
  * **total requests:** 2000947
  * **data read:** 1.31 MB
  * **average latency:** 14.40ms
### aqueduct
  * **requests/second:** 764.40
  * **total requests:** 229320
  * **data read:** 52.0 kB
  * **average latency:** 88.42ms
### shelf
  * **requests/second:** 7081.34
  * **total requests:** 2124402
  * **data read:** 1.35 MB
  * **average latency:** 13.52ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 11587.29
shelf | 13518.83
angel | 14395.03
aqueduct | 88422.11
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **13518.83us (13.52ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:05:00.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T04:13:52.349256 UTC.*
