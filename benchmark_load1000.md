# Benchmark Results (auto-generated at 2017-06-08T06:30:12.311839Z UTC)
Simulating 1000 concurrent connection(s).

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
  * **requests/second:** 3888.20
  * **total requests:** 19441
  * **data read:** 611 B
  * **average latency:** 149.50ms
### angel
  * **requests/second:** 2936.20
  * **total requests:** 14681
  * **data read:** 538 B
  * **average latency:** 220.27ms
### aqueduct
  * **requests/second:** 790.20
  * **total requests:** 3951
  * **data read:** 481 B
  * **average latency:** 815.13ms
  * **socket errors:** 73
### shelf
  * **requests/second:** 2334.60
  * **total requests:** 11673
  * **data read:** 418 B
  * **average latency:** 266.94ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 149499.85
angel | 220268.35
shelf | 266939.88
aqueduct | 815128.33
### Conclusion
After running hello, the fastest framework was `angel`.
  * Average latency of **220268.35us (220.27ms)**.
# Rankings
  1. `angel`
## Not ranked:
  * `aqueduct`
  * `shelf`
# Overall Conclusion
After running 1 test(s) for 0:00:05.000000 each, the fastest framework was `angel`, with 1 win(s).

*Done at 2017-06-08T02:30:39.205833 UTC.*
