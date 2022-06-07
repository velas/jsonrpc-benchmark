# RPC benchmark

Example of [`drill`](https://github.com/fcsonline/drill) configuration files for jsonrpc benchmarking.

## Benchmark results

### tokio::time::sleep
```
Concurrency 1000
Iterations 1000
Rampup 5
Base URL http://localhost:3030


Tokio                     Total requests            1000
Tokio                     Successful requests       1000
Tokio                     Failed requests           0
Tokio                     Median time per request   5072ms
Tokio                     Average time per request  5060ms
Tokio                     Sample standard deviation 20ms

Time taken for tests      5.1 seconds
Total requests            1000
Successful requests       1000
Failed requests           0
Requests per second       195.38 [#/sec]
Median time per request   5072ms
Average time per request  5060ms
Sample standard deviation 20ms
```

### std::thread::sleep
```
Concurrency 50
Iterations 50
Rampup 5
Base URL http://localhost:3030


Native                    Total requests            50
Native                    Successful requests       50
Native                    Failed requests           0
Native                    Median time per request   130146ms
Native                    Average time per request  127637ms
Native                    Sample standard deviation 72225ms

Time taken for tests      250.3 seconds
Total requests            50
Successful requests       50
Failed requests           0
Requests per second       0.20 [#/sec]
Median time per request   130146ms
Average time per request  127637ms
Sample standard deviation 72225ms
```

### Mixed
```
Concurrency 1000
Iterations 1000
Rampup 5
Base URL http://localhost:3030


Mixed sleep               Total requests            1000
Mixed sleep               Successful requests       1000
Mixed sleep               Failed requests           0
Mixed sleep               Median time per request   5078ms
Mixed sleep               Average time per request  7492ms
Mixed sleep               Sample standard deviation 2498ms

Time taken for tests      10.1 seconds
Total requests            1000
Successful requests       1000
Failed requests           0
Requests per second       99.08 [#/sec]
Median time per request   5078ms
Average time per request  7492ms
Sample standard deviation 2498ms
```

### Proxy tokio::time::sleep
```
Concurrency 1000
Iterations 1000
Rampup 5
Base URL http://localhost:3031


Proxy Tokio               Total requests            1000
Proxy Tokio               Successful requests       1000
Proxy Tokio               Failed requests           0
Proxy Tokio               Median time per request   5102ms
Proxy Tokio               Average time per request  7513ms
Proxy Tokio               Sample standard deviation 2506ms

Time taken for tests      10.2 seconds
Total requests            1000
Successful requests       1000
Failed requests           0
Requests per second       98.50 [#/sec]
Median time per request   5102ms
Average time per request  7513ms
Sample standard deviation 2506ms
```

### Proxy Mixed
```
Concurrency 1000
Iterations 1000
Rampup 5
Base URL http://localhost:3031


Proxy Mixed               Total requests            1000
Proxy Mixed               Successful requests       1000
Proxy Mixed               Failed requests           0
Proxy Mixed               Median time per request   5105ms
Proxy Mixed               Average time per request  7513ms
Proxy Mixed               Sample standard deviation 2501ms

Time taken for tests      10.1 seconds
Total requests            1000
Successful requests       1000
Failed requests           0
Requests per second       98.57 [#/sec]
Median time per request   5105ms
Average time per request  7513ms
Sample standard deviation 2501ms
```