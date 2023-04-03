# 시스템모델 알아보기
![image](https://user-images.githubusercontent.com/107944370/229392742-8f3b6de1-be04-4cdb-b52d-f0c01c0318f4.png)
![image](https://user-images.githubusercontent.com/107944370/229393168-5eaa5b5d-9ab0-4e96-9cfe-7495d355fde0.png)
<br>
<br>
<br>
<br>
<br>
<br>
# 시스템 모델과 칼만필터 알고리즘과의 관계
![image](https://user-images.githubusercontent.com/107944370/229393759-d1076130-6fda-4f3e-8572-d0d601ba0a91.png)
<br>
<br>
<br>
<br>
<br>
<br>
# 잡음의 공분산
![image](https://user-images.githubusercontent.com/107944370/229394521-d0e12a4f-c5ab-4c78-b124-f30c05c28247.png)
<br>
<br>
<br>
<br>
<br>
<br>
# 행렬 Q와 R가 측정값에 미치는 영향
![image](https://user-images.githubusercontent.com/107944370/229396212-04688077-a975-4f54-b88e-ec96d11b1c7b.png)
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229396231-95a44847-509b-4615-a159-7e95f59d7328.png)
<br>
<br>
<br>
<br>
<br>
<br>
# 초간단 칼만필터 예제
- 손칼만 연구원이 새로 들어온 배터리의 전압을 측정하는데, 잡음이 심해서 잴 때마다 전압값이 달랐다. 그래서 칼만필터로 잡음을 제거해보기로한다.
![image](https://user-images.githubusercontent.com/107944370/229400227-3b86106f-3363-4448-92e2-2da34c3f77af.png)
<br>
<br>
<br>

![image](https://user-images.githubusercontent.com/107944370/229399497-7406469b-d1f0-4734-9dda-b44abc3c3f09.png)
[칼만필터를 이용해 잡음을 제거한 결과]
![image](https://user-images.githubusercontent.com/107944370/229418937-34b7669b-fb2c-4644-9344-6d3bda8ef5db.png)
![image](https://user-images.githubusercontent.com/107944370/229418967-cfa7af8a-d26c-49f1-b5f2-0e16cc1152a0.png)

***오차공분산이 먼저 변화되고, 변화된 오차공분산이 칼만이득을 변화시키는 순서로 흐름***
