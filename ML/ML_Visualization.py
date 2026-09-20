import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns  # pd, np, plt, sns 통용적으로 이렇게 씀.

data=pd.read_csv("airquality_simple2.csv")
data.head()
data['Date']=pd.to_datetime(data['Date']) # pd.to_datetime()은 기존에 문자열로 된 날짜정보를 판다스의 날짜/시간 자료형으로 변환. 전처리의 일종임.
data.dropna(axis=0, inplace=True)  # dropna()는 결측치를 제거. axis=0은 행을 제거. =1이면 결측치가 있는 열을 제거. inplace=True는 바로 수정하라는 뜻. 따로 앞에 data=을 안해도 됨.
data.head()

plt.plot(data['Temp']) # 차트 그리기
plt.show() # 그린 차트 출력

# 축 설정하기
plt.plot(data['Date'],data['Temp']) # plt.plot(x축,y축)
plt.show()
plt.plot('Date','Temp',data=data) # plt.plot(x축,y축,data=) 이렇게도 가능
plt.show()

# 연습
plt.plot('Date','Ozone',data=data)
plt.show()

# 축 레이블 설정 *중요!!
plt.plot('Date','Ozone',data=data)
plt.xticks(rotation=30)     # x축 눈금 레이블을 30도 회전시키기. 날짜처럼 길어서 겹치는 경우 가시성을 위해 사용
plt.xlabel('Date')
plt.ylabel('Ozone')
plt.title('Daily Airquality')
plt.show()

# 라인 스타일 조정. 이런게있구나 정도
plt.plot('Date','Ozone',data=data
         ,color='blue'
         ,linestyle='dotted'
         ,marker='o')
plt.xticks(rotation=45)
plt.xlabel('Date')
plt.ylabel('Ozone')
plt.title('Daily Airquality')
plt.show()

# 여러 그래프 겹쳐 그리기
plt.plot('Date','Temp',data=data)
plt.plot('Date','Ozone',data=data
         ,color='blue'
         ,linestyle='dotted'
         ,marker='o')
plt.show() # 그래프를 생성 후 마지막에 plt.show()를 해주면 한번에 보여줌

# 범례,그리드 추가
plt.plot('Date','Temp',data=data,label='temp')
plt.plot('Date','Ozone',data=data,label='Ozone')
plt.legend(loc='upper right') # plt.legend()는 범례를 표시. loc=''으로 위치를 직접 지정도 가능. 기본값음 loc='best'로 최적위치 자동조정.
plt.grid() # 격자선 표시
plt.show()

# 연습문제
plt.figure(figsize=(12,8))
plt.plot(data['Date'],data['Ozone'],label='Ozone')
plt.plot(data['Date'],data['Temp'],label='Temp')
plt.plot(data['Date'],data['Wind'],label='Wind')
plt.xlabel('Date')
plt.title('Air Quality')
plt.legend()
plt.grid()
plt.show()

