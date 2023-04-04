# 위치로 속도 추정하기
> 손칼만 연구원은 요즘 신형 열차의 성능 시험으로 바쁘다. 시험 내용은 직선 선로에서 열차가 80[m/s]의 속도를 유지하는지 확인 하는 것이다. 위치와 속도는 0.1초   간격으로 측정해서 저장하도록 한다. 하지만 속도 데이터가 모두 0으로 찍혔다. 이 위기를 어떻게 대처할까?

![image](https://user-images.githubusercontent.com/107944370/229677211-8546740d-1ed0-4d9a-a16b-7f1016fa4820.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229661398-deeac49d-abe1-4181-845a-1dbeecc2b4db.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229661452-7960f1ea-eed4-484c-8fee-6c48bbf805d4.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229661472-63814460-3b07-4113-b8d0-18e8412701e6.png)
<br>
<br>
<br>
<br>
# 속도로 위치 추정하기
![image](https://user-images.githubusercontent.com/107944370/229674140-3d06aae0-9362-4214-b2ea-f91ae8fc4a72.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229674169-9e4cb753-3dde-40a5-9b1d-30a997af9486.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229674214-58e46fb7-41af-45bc-8fe3-1f8d57d7b9fb.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229674233-9e43cfcd-1d37-4179-9139-44b400f1d6a9.png)
<br>
<br>
<br>
<br>
# 초음파 거리계로 속도 추정하기
![image](https://user-images.githubusercontent.com/107944370/229674336-9cc0d400-609c-4900-8b3d-bf2644f2bea9.png)
> 거리로 속도를 추정하므로 앞 전에 위치로 속도 추정하기와 똑같은 시스템 모델을 이용
<br>
<br>
<br>
<br>

![image](https://user-images.githubusercontent.com/107944370/229674394-3159e1c4-47e1-463f-8464-9267a07ff9d6.png)
<br>
<br>
<br>
<br>

![image](https://user-images.githubusercontent.com/107944370/229674410-755403f3-26e9-417c-9731-c8f50976f93b.png)
<br>
<br>
<br>
<br>


# 칼만이득 계산 경량화 하기
![image](https://user-images.githubusercontent.com/107944370/229676599-373576fa-1514-4927-80ad-eaf5ed8cdf8f.png)
![image](https://user-images.githubusercontent.com/107944370/229676612-60af38db-2009-44fe-9cd4-8982ce7f5cb2.png)
> __만약 상태변수가 많아지면 시스템 모델의 행렬이 커져서 경량화를 사용하기 어려움__

# 시스템 모델의 힘
- 어떻게 칼만필터는 위치의 측정값만 추정했는데 속도까지 알 수 있을까?
> __속도와 거리의 물리적인 관계를 시스템 모델에 심어놓았기 때문이다__



