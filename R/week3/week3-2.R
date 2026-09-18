matr=matrix(1:9,ncol=3,nrow=3)
matr
paste("ID",c(1,2,3))
rownames(matr)=paste("ID",c(1,2,3)) # 이렇게도 가능. 문자열이 벡터로 생성됨.
colnames(matr)=c("Seoul","Tokyo","Madison")
matr
length(matr)
mode(matr) # 데이터의 특성을 출력
dim(matr) # 행과 열의 개수를 각각 출력
dimnames(matr)# [[1]]은 행 이름을 보여주고, [[2]]는 열 이름을 보여줌. [[]]는 리스트를 의미한다고 하는듯.(뒤에 배움)
matrix(c(1,4,7,2,5,8,3,6,9),ncol=3) # matrix()는 기본적으로 열방향으로 숫자를 채움
matr2=matrix(1:9,ncol=3,byrow=T) # byrow=T를 해주면 행방향으로 채움. 따라서 위와 같이 1,4,7이렇게 배열을 안해도 됨.
matr2
matr3=matrix(1:10,ncol=2)
matr3

#Diagonal Matrix : 대각행렬, 대각행렬은 정방행렬임. off-diagonal elements are all Zero. 대각원소를 제외하고는 전부 0
y=diag(c(1,3,4)) # 대각행렬의 (대각)원소가 1 3 4 
y
diag(y) # 대각 원소만 출력
diag(matr) # 대각 행렬이 아닌 행렬의 대각 원소도 출력.
diag(diag(matr)) # 이렇게 하면 대각 행렬을 생성함.
diag(c(1,5,9)) # 위와 동일한 의미로, diag()내부에 이렇게 벡터를 넣으면, 이를 대각 원소로 하는 대각 행렬을 생성

matr
t(matr) # 전치(Transpose)시키는 함수
solve(matr) # solve()는 역행렬을 구함. 근데, 얘는 에러가 뜸. matr 행렬이 선형종속이라 det(matr)=0이므로 역행렬이 없음.
det(matr) # 행렬식
solve(y)
find=solve(y,matr) # solve(X,Y) 이건 Ax=B에서 x를 찾는 거라고 생각하면 됨. y*x=matr에서 x행렬을 찾아줌 
y%*%find # %*%는 두 행렬의 곱연산을 뜻함. 
y%*%solve(y,matr)
eigen(y) # 행렬의 고유값과 고유벡터를 구해줌 Ax=람다x 에서 x가 고유벡터, 람다가 고유값

B=matrix(1:9,nrow=3)
B
B[3,3]=2 # B행렬의 3행 3열의 원소를 2로 교체
B[3,] # 3행만 보여줌
B[,3] # 3열만 보여줌

# x+2y=10  x-y=1 의 해를 구하여라
A1=matrix(c(1,2,1,-1),nrow=2,byrow=T)
matrix(c(1,2,1,-1),2,2,byrow=T) # 이렇게 해도 2행 2열로 생성
A1
A2=c(10,1)
solve(A1,A2) # 이러면 A1x=A2에서 x를 찾아줌
solve(A1)%*%A2 # 이렇게 해도 됨. 그냥 A1의 역행렬을 좌우변에 각각 곱해서 x행렬을 찾는다는 논리

# 선형회귀에서의 오차제곱합
# Y = XB + e 선형회귀식. 여기서 e(오차항)=Y-XB 즉, 실제값(Y)와 예측값(XB)의 차이가 오차.
# 우리는 오차를 최소화하고 싶음. -> 오차제곱합을 최소화. 오차제곱합은 e'e로구함. 전치e와 e를 곱하면 오차제곱합이 나오니깐.
# 따라서 e'e=(Y-XB)'(Y-XB) 이걸 B에 대해 최소화하려고 함. ((Y-XB)'=Y'-B'X') 
# 얘를 전개하고 B에대해 미분하면 -2X'Y+2X'XB=0이 나옴. 따라서 X'XB=X'Y 이므로 양변에 (X'X)역행렬을 곱하면, B=(X'X)^-1X'Y이라는 식이 나옴.
# B를 코드로 나타내면, solve(t(X)%*%X)%*%t(X)%*%Y가 됨

n=50
x=rnorm(n) # 정규분포에서 랜덤한 숫자 50개를 뽑아서 x라는 벡터에 저장. rnorm()의 기본 설정은 N(0,1)으로, 평균이 0이고 표준편차 1인 정규분포에서 뽑음.
y = 10 + x + rnorm(n)
plot(x,y)
lm(y~x)$coef # 회귀분석 결과에서 회귀계수만 출력. y절편과 x계수

X=cbind(1,x)
solve(t(X)%*%X)%*%t(X)%*%y # 이건 lm(y~x)$coef와 거의 동일하게 나옴. lm()이 계산하는 것을 행렬로 직접 계산한거라고 생각하면 됨. 

SAT=read.table("SAT.txt",header=T)
head(SAT)
lm1=lm(verbal~math,data=SAT)
summary(lm1) # summary()는 선형회귀 결과를 자세하게 보여줌. 