# Benchmark Results (auto-generated at 2017-06-08T07:13:34.217886Z UTC)
Simulating 25 concurrent connection(s).

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
  * **requests/second:** 9285.10
  * **total requests:** 2785529
  * **data read:** 2.24 MB
  * **average latency:** 2.43ms
### angel
  * **requests/second:** 6630.32
  * **total requests:** 1989095
  * **data read:** 1.80 MB
  * **average latency:** 3.58ms
### aqueduct
  * **requests/second:** 830.02
  * **total requests:** 249007
  * **data read:** 129 kB
  * **average latency:** 22.15ms
### shelf
  * **requests/second:** 7629.48
  * **total requests:** 2288844
  * **data read:** 2.04 MB
  * **average latency:** 3.08ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 2426.32
shelf | 3076.58
angel | 3577.39
aqueduct | 22152.44
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **3076.58us (3.08ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:05:00.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T03:33:40.181719 UTC.*
