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
# 상태방정식
![image](https://user-images.githubusercontent.com/107944370/229975705-8ddfa929-5cfe-4f95-89ae-e9ca248d1197.png)
