# Benchmark Results (auto-generated at 2017-06-09T01:17:50.179571Z UTC)
Simulating 50 concurrent connection(s).

*All tests are run for 0:01:00.000000 (60000ms).*
## Framework(s) Tested (3)
  * `dart:io` (reference point, not a framework)
  * `shelf` (reference point, not a framework)
  * `angel`
## Contents
  * [Test Cases](#test-cases)
  * [Rankings](#rankings)
  * [Overall Conclusion](#overall-conclusion)
# Test Cases
## hello
Endpoint: `/hello`
### dart:io
  * **requests/second:** 9324.52
  * **total requests:** 559471
  * **data read:** 198 kB
  * **average latency:** 3.83ms
### shelf
  * **requests/second:** 8174.40
  * **total requests:** 490464
  * **data read:** 182 kB
  * **average latency:** 4.51ms
### angel
  * **requests/second:** 7816.12
  * **total requests:** 468967
  * **data read:** 162 kB
  * **average latency:** 4.78ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 3830.03
shelf | 4507.19
angel | 4784.98
### Conclusion
After running hello, the fastest framework was `angel`.
  * Average latency of **4784.98us (4.78ms)**.
## route_param
Endpoint: `/route_param/foo`
### dart:io
  * **requests/second:** 9281.70
  * **total requests:** 556902
  * **data read:** 198 kB
  * **average latency:** 3.89ms
### shelf
  * **requests/second:** 8164.50
  * **total requests:** 489870
  * **data read:** 174 kB
  * **average latency:** 4.56ms
### angel
  * **requests/second:** 6359.28
  * **total requests:** 381557
  * **data read:** 141 kB
  * **average latency:** 6.05ms
### Data Table
* Sorted from fastest to slowest

Name | Average Latency (microseconds)
---- | ----
dart:io | 3888.33
shelf | 4561.63
angel | 6050.12
### Conclusion
After running route_param, the fastest framework was `angel`.
  * Average latency of **6050.12us (6.05ms)**.
# Rankings
  1. `angel`
# Overall Conclusion
After running 2 test(s) for 0:01:00.000000 each, the fastest framework was `angel`, with 2 win(s).

*Done at 2017-06-08T21:24:02.668062 UTC.*
