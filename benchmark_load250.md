# Benchmark Results (auto-generated at 2017-06-08T06:29:19.777173Z UTC)
Simulating 250 concurrent connection(s).

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
  * **requests/second:** 5202.40
  * **total requests:** 26012
  * **data read:** 2.94 kB
  * **average latency:** 31.44ms
### angel
  * **requests/second:** 3662.00
  * **total requests:** 18310
  * **data read:** 2.93 kB
  * **average latency:** 49.84ms
### aqueduct
  * **requests/second:** 844.80
  * **total requests:** 4224
  * **data read:** 1.14 kB
  * **average latency:** 241.14ms
### shelf
  * **requests/second:** 3852.40
  * **total requests:** 19262
  * **data read:** 2.81 kB
  * **average latency:** 45.00ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 31442.57
shelf | 45002.65
angel | 49838.19
aqueduct | 241138.04
### Conclusion
After running hello, the fastest framework was `shelf`.
  * Average latency of **45002.65us (45.00ms)**.
# Rankings
  1. `shelf`
## Not ranked:
  * `angel`
  * `aqueduct`
# Overall Conclusion
After running 1 test(s) for 0:00:05.000000 each, the fastest framework was `shelf`, with 1 win(s).

*Done at 2017-06-08T02:29:45.881450 UTC.*
