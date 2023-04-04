# 영상 속의 물체 추적하기
- 먼저 영상처리 알고리즘을 통해 표적의 위치를 알아내야 한다. 이것은 칼만필터가 해줄 수 있는 일이 아니다.
- 영상처리로 알아낸 표적의 위치를 측정값으로 이용해 칼만필터가 위치 오차를 제거하고, 물체의 이동속도를 추정해 정확한 위치를 찾는 것

# 2차원(x,y좌표)시스템 모델 결정하기
![image](https://user-images.githubusercontent.com/107944370/229705031-a211514b-1768-425f-911f-1d76ccc3e0be.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229705079-570fed60-7bad-423d-9c8c-03f1a5220892.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229705171-51949fe3-e7d5-41bc-ab9a-52cd3ee72b3b.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229705205-d3f0cd1a-3732-4993-8779-076df8dffe45.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229705242-e135e617-600d-4067-87bc-0e88b69c3742.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229705281-5ce75d2b-f194-4f0b-9b91-ee7769df0260.png)
<br>
<br>
<br>
<br>
![image](https://user-images.githubusercontent.com/107944370/229705317-161a41a1-fb76-4628-a182-1ee447b2a9a7.png)
