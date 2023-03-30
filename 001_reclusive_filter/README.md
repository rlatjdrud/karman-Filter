# 일반적인 평균 구하기
## $$\bar x =  x_{1} + x_{2}+ \cdots + x_{n} \over n $$
- 여기서,  새로운 값 $$\bar x_{n+1}$$을 
- 추가해 평균을 구하려면 다시 1 부터 n+1까지 더하고 n+1로 나눠야하며, 1 부터 n까지의 데이터도 모두 메모리에 있어야하기 때문에 비효율적

# 재귀적으로 평균 구하기
## $$\bar x_{k-1} =  \frac{x_{1}+ x_{2}+ \cdots + x_{k-1}}{k-1}$$
## $$\bar x_{k} = \frac{x_{1}+ x_{2}+ \cdots + x_{k}}{k}$$
## $$\frac {k}{k-1} \bar x_{k} = \frac {x_{1}+ x_{2}+ \cdots + x_{k}}{k-1}$$
## $$\frac {k}{k-1} \bar x_{k} = \frac {x_{1}+ x_{2}+ \cdots + x_{k-1}}{k-1} + \frac {x_{k}}{k-1}$$
## $$\frac {k}{k-1} \bar x_{k} = \bar x_{k-1}+\frac {\bar x_{k}}{k-1}$$
## $$\frac{k-1}{k} \times \frac {k}{k-1} \bar x_{k} = \frac{k-1}{k} \times \bar x_{k-1}+ \frac{k-1}{k} \times \frac {\bar x_{k}}{k-1}$$
## $$\bar x_{k} = \frac{k-1}{k} \bar x_{k-1} + \frac{1}{k} \bar x_{k}$$
- 이렇게 하면, 필요한 데이터가 이전의 평균값 데이터 갯수인 k값 새로 들어온 데이터 값만 있으면 되기때문에 메모리에 효율을 높일 수 있다.
