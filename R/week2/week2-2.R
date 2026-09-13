data() # R에서 자체 제공하는 데이터셋 목록을 확인 가능
mean(Nile) # 자체 제공 데이터셋 중 하나인 Nile. 나일강 데이터임
Nile
?Nile 
plot(Nile)

library(survival) # 서바이벌 패키지는 생존분석을 위한 패키지. 어떤 사건(event)이 발생하기까지 얼마나 시간이 걸리는지 분석.
data(transplant)
search() # 현재 활성화된 검색 경로. 패키지가 설치되어 있어도 임포트를 안했으면 안뜸
detach("package:survival") # 패키지 비활성화. 다시 활성화 하려면 library()로 불러오기

x=c("M","F","F","M","F")
table(x) # 데이터의 빈도를 세서 정리해줌
lengh(x) # 총 데이터의 수
table(x)/length(x) # 데이터의 상대도수(비율)을 나타냄
factor(x)
x
x=="M"
y=ifelse(x=="M",1,0) # 이게 참이면 1, 거짓이면 0으로 변환함. ifelse(logic,a,b)
y
factor(y)

barplot(table(x)) # 바 그래프 그리기
pie(table(x)) # 원형 차트 그리기

math=c(0,30,56,77,88,63,84,73,81,44,67)
summary(math) # summary()함수는 데이터의 min 1사분위수 중앙값 평균 3사분위수 max 6개의 통계량을 나타내줌
boxplot(math, main="Math Score") # main=은 박스플롯의 제목을 설정. 이상치도 o로 나타내줌. 1.5(Q3-Q1)이 기준
# min max값에서 더하고 빼는 것이 아니고, Q1-1.5IQR, Q3+1.5IQR이 기준
boxplot(math, main="Math Score",range=2) #range가 이상치 결정 기준으로, 기본값은 1.5임

par(mfrow=c(1,2)) # 그래프를 여러 개 그릴 때 화면 배치를 설정. mfrow는 그래프를 행렬구조로 배치. 1행 2열
hist(math)
hist(math, probability=T) # probavility=T를 넣으면 확률밀도(density)를 나타냄. 히스토그램 아래 면적의 합이 1이됨. prob,pro,pr으로 줄여서 쓸 수 있음.
# mfrow와 mfcol의 차이는 어디부터 채우냐의 차이임. mfrow는 왼쪽위부터 가로(행)로 먼저 채우면서 내려가고, mfcol은 세로(열)부터 채우면서 옆으로 감.

attach(faithful) # 데이터 내의 변수를 R환경에서 이름으로 이용가능하게 해주는 함수. detach()로 종료가능
faithful
plot(eruptions, waiting)# x축과 y축을 설정하는것. x축은 이럽션 데이터, y축은 웨이팅 데이터
abline(lm(waiting~eruptions),col='red')
# 산점도 위에 회귀직선을 그림. lm()은 선형회귀모델. waiting이 y(종속변수) eruptions가 x(독립변수)로 사용
# abline()은 직선을 그래프에 추가시키는 함수
# col=''는 직선의 색깔을 지정

x=1:20
par(mfrow=c(2,2))
plot(log(x)~x) # ~ 이렇게 식을 나타내면 맨앞이 y고 ~ 뒤가 독립변수 x임
plot(log(x)~x, type='l') # l은 소문자 엘임. 1이 아니야. 
plot(log(x)~x, type='o')
plot(log(x)~x, type='o',col='blue')
# 데이터를 어떤식으로 나타낼지 지정하는 것. 맨처음은 점으로 찍는거, 두번째는 선으로 나타내는 것, 세번째는 점과 선 모두를 나타냄.
# plot의 저장 방법은 다양함. 그냥 컨씨컨브이도 되고, 상단바에서 파일을 눌러 다양한 형식으로 저장도 가능.

#아래 세 줄을 통해 저장도 가능. 저장할 파일 형식을 지정하고, 저장할 그래프를 그리고, 저장 완료
jpeg("myplot.jpg") #jpeg말고 png, pdf같은 형식으로도 코드를 수정하면 가능
plot(log(x)~x, type='o',col='blue') 
dev.off()
# 정확히 설명하면, 첫줄은 그래픽 장치를 열기, 다음은 그 장치에 그래픽 그리기, 이후 장치를 닫고 저장 완료하기 순이라고 생각. 
# 그래프를 myplot이라는 함수에 할당하고 jpeg(myplot,"myplot.jpg")이런식으로는 불가능

