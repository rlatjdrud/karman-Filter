# 일반적인 평균 구하기
## $$\bar x =  x_{1} + x_{2}+ \cdots + x_{n} \over n $$
- 여기서,  새로운 값 $$\bar x_{n+1}$$ 
- 추가해 평균을 구하려면 다시 1 부터 n+1까지 더하고 n+1로 나눠야하며, 1 부터 n까지의 데이터도 모두 메모리에 있어야하기 때문에 비효율적

# 재귀적으로 평균 구하기
## $$\bar x_{k-1} =  \frac{x_{1}+ x_{2}+ \cdots + x_{k-1}}{k-1}$$
## $$\bar x_{k} = \frac{x_{1}+ x_{2}+ \cdots + x_{k}}{k}$$
## $$\frac {k}{k-1} \bar x_{k} = \frac {x_{1}+ x_{2}+ \cdots + x_{k}}{k-1}$$
## $$\frac {k}{k-1} \bar x_{k} = \frac {x_{1}+ x_{2}+ \cdots + x_{k-1}}{k-1} + \frac {x_{k}}{k-1}$$
## $$\frac {k}{k-1} \bar x_{k} = \bar x_{k-1}+\frac {\bar x_{k}}{k-1}$$
## $$\frac{k-1}{k} \times \frac {k}{k-1} \bar x_{k} = \frac{k-1}{k} \times \bar x_{k-1}+ \frac{k-1}{k} \times \frac {\bar x_{k}}{k-1}$$
## $$\bar x_{k} = \frac{k-1}{k} \bar x_{k-1} + \frac{1}{k} \bar x_{k}$$

### 이렇게 하면, 필요한 데이터는 
- 이전의 평균값 
- 현재 데이터 갯수인 k값 
- 새로 들어온 데이터 값
### 3개의 데이터만 있으면 되기때문에 메모리에 효율을 높일 수 있다.

![image](https://user-images.githubusercontent.com/107944370/228788599-52e4399c-d0c3-4ec6-a246-f43d779d9977.png)
<br>
__평균값으로 잡음제거__

<br>
<br>
<br>

# 이동평균 
- 일반적인 평균과의 차이는 데이터의 동적인 변화를 남길 수 있다는 것
- 증권가에서 5일 이동평균, 20일 이동평균이라는 말로  5일 동안 또는 20일 주가에대한 평균을 내는 것을 뜻함
- 이것을 통해 매일매일의 주가 변동에 현혹되지 않고 주가의 중장기 추이를 확인할 수 있음.

>
>이동평균은 k개  데이터를 평균하는 것이 아니라 __지정된 개수의 최근 측정값만 가지고 계산한 평균값(n개의 이동평균)__

## $$\bar x_{k-1} =  \frac{x_{k-n}+ x_{2}+ \cdots + x_{k-1}}{n}$$
## $$\bar x_{k} = \frac{x_{k-n+1}+ x_{2}+ \cdots + x_{k}}{n}$$

- 최근측정값 $$x_{k}$$ 

- 가장 오래된 값 $$x_{k-n}$$

>
>최근 측정된 값이 더해지고 가장 오래된 값을 버려서 최신의 이동평균값 $$\bar x_{k}$$
>을 구함

### 재귀적으로 구하기
#### $$\bar x_{k}-\bar x_{k-1} = \frac{x_{k}-x_{k-n}}{n}$$
#### $$\bar x_{k}=\bar x_{k-1} + \frac{x_{k}-x_{k-n}}{n}$$
![image](https://user-images.githubusercontent.com/107944370/228790194-42ffad3b-3ad7-493d-8e3f-0032f59c2625.png)

