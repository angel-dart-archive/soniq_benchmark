# Benchmark Results (auto-generated at 2017-06-08T06:33:22.279691Z UTC)
Simulating 5 concurrent connection(s).

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
  * **requests/second:** 9729.82
  * **total requests:** 2918947
  * **data read:** 2.92 MB
  * **average latency:** 378.85us
### angel
  * **requests/second:** 7041.33
  * **total requests:** 2112399
  * **data read:** 2.11 MB
  * **average latency:** 608.12us
### aqueduct
  * **requests/second:** 895.91
  * **total requests:** 268774
  * **data read:** 269 kB
  * **average latency:** 4.11ms
### shelf
  * **requests/second:** 7315.38
  * **total requests:** 2194614
  * **data read:** 2.19 MB
  * **average latency:** 575.42us
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 378.85
shelf | 575.42
angel | 608.12
aqueduct | 4114.25
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **575.42us (0.58ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:05:00.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T02:53:28.146807 UTC.*
