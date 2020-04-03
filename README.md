![](https://github.com/taelee42/Prime_factorization_Tester/blob/master/Screen%20Shot%202020-04-03%20at%203.33.12%20PM.png?raw=true)

# 실행 방법

테스트 할 폴더에 진입 후

깃 클론 실행

`git clone https://github.com/taelee42/Prime_factorization_Tester.git`

file structure:

       |---실행 프로그램 폴더
    
                |---클론위치



클론한 폴더에 진입후

`./PrimeFactoTester.sh`



# 기능

- 작은 숫자 (2~20)까지 실행

- unsigned int max value(4294967295) 테스트

- unsigned int 바깥 값 테스트

- 인자가 2개이상일 때 테스트

- 숫자가 아닌 문자가 들어왔을 때 테스트

- 음수 테스트

  

# Benchmark 파일 추가

- #### benchmark_100.sh

  Max value 이전 100개의 값으로 테스트 뒤 경과 시간을 출력합니다.

  `./benchmark_100.sh`

- #### benchmark_1000.sh

  Max value 이전 1000개의 값으로 테스트 뒤 경과 시간을 출력합니다.

  `./benchmark_1000.sh`

- #### benchmark.sh

  max값을 직접 지정합니다.

  `./benchmark.sh` 입력 후 max 값 입력



# 주의

Max Value Test에서 계산이 너무 오래걸려 결과가 안나오면

Ctrl + C로 빠져나오시면 됩니다.



#### 더 필요한 기능 알려주시면 추가 하겠습니다.

