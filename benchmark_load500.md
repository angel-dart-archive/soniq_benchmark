# Benchmark Results (auto-generated at 2017-06-08T08:33:59.033560Z UTC)
Simulating 500 concurrent connection(s).

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
  * **requests/second:** 4774.77
  * **total requests:** 1432430
  * **data read:** 301 kB
  * **average latency:** 99.42ms
### angel
  * **requests/second:** 4881.05
  * **total requests:** 1464315
  * **data read:** 388 kB
  * **average latency:** 98.64ms
### aqueduct
  * **requests/second:** 658.26
  * **total requests:** 197479
  * **data read:** 33.0 kB
  * **average latency:** 565.24ms
### shelf
  * **requests/second:** 4880.51
  * **total requests:** 1464152
  * **data read:** 367 kB
  * **average latency:** 98.33ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
shelf | 98331.75
angel | 98641.49
dart:io | 99423.03
aqueduct | 565242.13
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **98331.75us (98.33ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:05:00.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T04:54:06.413148 UTC.*
