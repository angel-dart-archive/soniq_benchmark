# Benchmark Results (auto-generated at 2017-06-08T06:53:28.161847Z UTC)
Simulating 10 concurrent connection(s).

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
  * **requests/second:** 8855.18
  * **total requests:** 2656555
  * **data read:** 2.46 MB
  * **average latency:** 953.17us
### angel
  * **requests/second:** 6872.77
  * **total requests:** 2061831
  * **data read:** 2.00 MB
  * **average latency:** 1.34ms
### aqueduct
  * **requests/second:** 829.92
  * **total requests:** 248977
  * **data read:** 173 kB
  * **average latency:** 8.29ms
### shelf
  * **requests/second:** 7489.69
  * **total requests:** 2246906
  * **data read:** 2.17 MB
  * **average latency:** 1.20ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 953.17
shelf | 1202.53
angel | 1337.53
aqueduct | 8291.38
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **1202.53us (1.20ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:05:00.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T03:13:34.198830 UTC.*
