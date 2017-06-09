# Benchmark Overview (auto-generated at 2017-06-09T02:01:19.531045Z UTC)
*All tests are run for 0:01:00.000000 (60000ms).*

This benchmark was run on a system with the following specs:
  * **OS:** windows
  * **Number of Processor Cores:** 4
  * **Dart SDK Version:** 1.23.0 (Fri Apr 21 03:13:00 2017) on "windows_x64"
## Framework(s) Tested (3)
Each framework ran concurrently in 4 isolate(s).

  * `dart:io` (reference point, not a framework)
  * `shelf` (reference point, not a framework)
  * `angel`
# Conclusion
These are the fastest frameworks, ordered by how many load simulations they won:
  1. `angel` (7 win(s)) - **average 40.92ms**

Here are the average latencies of the reference point(s):
`dart:io` - **average 27.45ms**
`shelf` - **average 32.61ms**
