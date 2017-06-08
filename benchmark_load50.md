# Benchmark Results (auto-generated at 2017-06-08T06:28:28.767484Z UTC)
Simulating 50 concurrent connection(s).

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
  * **requests/second:** 5544.60
  * **total requests:** 27723
  * **data read:** 9.79 kB
  * **average latency:** 5.66ms
### angel
  * **requests/second:** 3611.00
  * **total requests:** 18055
  * **data read:** 9.07 kB
  * **average latency:** 10.36ms
### aqueduct
  * **requests/second:** 917.40
  * **total requests:** 4587
  * **data read:** 2.67 kB
  * **average latency:** 45.08ms
### shelf
  * **requests/second:** 4549.00
  * **total requests:** 22745
  * **data read:** 10.1 kB
  * **average latency:** 7.34ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 5660.86
shelf | 7338.91
angel | 10362.01
aqueduct | 45076.25
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **7338.91us (7.34ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:00:05.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T02:28:54.209376 UTC.*
