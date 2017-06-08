# Benchmark Results (auto-generated at 2017-06-08T07:33:40.205784Z UTC)
Simulating 50 concurrent connection(s).

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
  * **requests/second:** 8918.70
  * **total requests:** 2675609
  * **data read:** 1.75 MB
  * **average latency:** 5.13ms
### angel
  * **requests/second:** 6108.60
  * **total requests:** 1832581
  * **data read:** 1.47 MB
  * **average latency:** 7.83ms
### aqueduct
  * **requests/second:** 770.81
  * **total requests:** 231242
  * **data read:** 73.4 kB
  * **average latency:** 43.55ms
### shelf
  * **requests/second:** 6746.71
  * **total requests:** 2024012
  * **data read:** 1.60 MB
  * **average latency:** 7.06ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 5128.53
shelf | 7055.98
angel | 7834.46
aqueduct | 43552.25
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **7055.98us (7.06ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:05:00.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T03:53:46.105349 UTC.*
