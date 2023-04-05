# 선형화 칼만 필터
- 비선형 시스템을 하나의 기준점 주위에서 선형화 시켜서 얻은 선형 모델 A와 H를 사용한다
- __하지만__ 선형화 모델은 기준점 주위에서만 비선형시스템과 비슷한 역할을 하게되므로, __기준점 주위를 벗어나면 큰 오류가 발생__

# EKF 알고리즘
- 칼만필터를 비선형 시스템까지 확장한 대표적인 알고리즘
![image](https://user-images.githubusercontent.com/107944370/229967119-23c71ab9-ab3a-46a7-8320-984c440622aa.png)
![image](https://user-images.githubusercontent.com/107944370/229967358-77e8dccb-bd71-4340-be06-1486cc8b5915.png)
![image](https://user-images.githubusercontent.com/107944370/229970407-58f934fc-ec1e-454a-9115-02d781dc46f5.png)
# EKF 알고리즘 과 선형화 칼만필터의 차이점
![image](https://user-images.githubusercontent.com/107944370/229974220-10d28e1c-56a9-4998-b0c5-a72fcba932da.png)
# 레이더 추적
![image](https://user-images.githubusercontent.com/107944370/229976100-954ec8f8-6442-47e5-92d6-3469a436c883.png)

# 상태방정식
![image](https://user-images.githubusercontent.com/107944370/229975705-8ddfa929-5cfe-4f95-89ae-e9ca248d1197.png)
![image](https://user-images.githubusercontent.com/107944370/229976048-bc45b6a6-3d09-4e06-a60a-382a59da2b76.png)

# 시스템 행렬 A 와 H 구하기
![image](https://user-images.githubusercontent.com/107944370/229977246-9e583afb-8ffe-46ba-bfda-6a64bfbbc7ad.png)

# 레이더로 측정한 직선거라와 칼만필터로 잡음을 제거한 직선거리 
![image](https://user-images.githubusercontent.com/107944370/229990478-fdcd5cfc-2dfe-4c88-bcbe-d0199e115caa.png)

# 칼만필터가 직선거리를 이용해 추정한 고도
![image](https://user-images.githubusercontent.com/107944370/229990597-31ffb4af-a3a9-4a49-b977-dfd42622e166.png)
# 칼만필터가 직선거리를 이용해 추정한 이동속도
![image](https://user-images.githubusercontent.com/107944370/229990718-f6f13185-77df-4174-b72b-3d0ec0930b07.png)
