# Benchmark Results (auto-generated at 2017-06-08T06:27:37.820576Z UTC)
Simulating 10 concurrent connection(s).

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
  * **requests/second:** 5612.40
  * **total requests:** 28062
  * **data read:** 23.1 kB
  * **average latency:** 1.13ms
### angel
  * **requests/second:** 4486.40
  * **total requests:** 22432
  * **data read:** 19.7 kB
  * **average latency:** 1.59ms
### aqueduct
  * **requests/second:** 934.80
  * **total requests:** 4674
  * **data read:** 4.13 kB
  * **average latency:** 8.60ms
### shelf
  * **requests/second:** 4661.20
  * **total requests:** 23306
  * **data read:** 20.2 kB
  * **average latency:** 1.52ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 1125.85
shelf | 1522.56
angel | 1585.69
aqueduct | 8604.07
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **1522.56us (1.52ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:00:05.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T02:28:03.392061 UTC.*
