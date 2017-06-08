# Benchmark Results (auto-generated at 2017-06-08T08:54:06.427190Z UTC)
Simulating 1000 concurrent connection(s).

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
  * **requests/second:** 4374.36
  * **total requests:** 1312309
  * **data read:** 167 kB
  * **average latency:** 218.04ms
### angel
  * **requests/second:** 4597.32
  * **total requests:** 1379197
  * **data read:** 219 kB
  * **average latency:** 176.93ms
  * **socket errors:** 151
### aqueduct
  * **requests/second:** 459.97
  * **total requests:** 137991
  * **data read:** 7.37 kB
  * **average latency:** 1401.86ms
### shelf
  * **requests/second:** 1148.07
  * **total requests:** 344421
  * **data read:** 63.8 kB
  * **average latency:** 618.09ms
  * **socket errors:** 255
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
angel | 176928.66
dart:io | 218035.13
shelf | 618091.68
aqueduct | 1401864.99
### Conclusion
After running hello, the fastest framework was `angel`.
  * Average latency of **176928.66us (176.93ms)**.
# Rankings
  1. `angel`
## Not ranked:
  * `aqueduct`
  * `shelf`
# Overall Conclusion
After running 1 test(s) for 0:05:00.000000 each, the fastest framework was `angel`, with 1 win(s).

*Done at 2017-06-08T05:14:25.738891 UTC.*
