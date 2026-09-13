getwd() # 작업 디렉토리 확인
sink("output1.txt") # 파일 생성. 정확히는 출력을 콘솔이 아닌 파일로 보내는 명령어.
v1=c(1,3,5,7,9,11,13,15,17,19,NA) # 데이타 생성
mean(v1, na.rm=T) # NA값은 rm(remove)해서 mean 값을 계산. 제거를 안할경우, 결측값이 하나라도 있으면 mean이 NA로 나옴
sink() #파일로 보내던 출력을 다시 콘솔로 되돌림
mean(v1, na.rm=T) # 실행시 콘솔에 결과가 출력되는 것을 확인할 수 있음.
mean(v1) # 데이터에 NA가 포함되어 있기 때문에 NA로 출력

v1=c(1,3,5,7,9)
v2=c(2,4,6,8,10)
v3=v1*v2
v3
v4=v1+v2
v4
#cat()함수는 print와 유사한 함수임. 내용을 콘솔에 출력하는 함수임 
cat("Vector v1=(",v1,")","\n",file="output3.txt") # 자세히 보면 처음은 vec~=(까지 묶이고, 그다음은 v1, 그리고 ) 혼자 따로묶이고, \n은 줄바꿈을 의미
cat("Vector v2=(",v2,")","\n",file="output3.txt", append=T) # append=T는 기존파일 내용 뒤에 이어서 추가한다는 뜻. =F면 덮어씌우기임
# \n은 문자열 안에 그냥 넣어도 됨. Hello\nworld 이렇게. 여기서는 근데 중간에 줄바꿈하는게 아니니까 이렇게 표시함.
# cat()는 뭔가 내용을 문자처럼 이어붙히거나 원하는 형식으로 출력할 때 유용. 반면 print()는 객체 자체를 확인할 때 보통 쓰임
cat("v1*v2=(",v3,")","\n",file="output3.txt", append=T)
cat("v1+v2=(",v4,")","\n",file="output3.txt", append=T)

x<-c(1,2,3)
write(x, "wr1.txt")  # write()는 벡터의 값을 파일이나 콘솔에 출력하는 함수
matrix(1:10, ncol=5) # 열이 5개인 행렬 생성
matrix(1:10, nrow=2) # 열이 2개인 행렬 생성, 위와 결과가 같음
matrix(1:10, , ncol=5, nrow=2) # 마찬가지로 결과가 같음
matrix(1:10, nrow=3) # 에러가 뜸. 10개의 데이터를 3개의 행으로 분리할 수 없으니깐. 
y=matrix(1:10, ncol=5)
y
write(y, "wr2.txt", sep=",")

library(MASS) #안깔려있다면, install.packages("name")으로 설치
rownames(y)=c("male","female") # 행 레이블 지정
y
colnames(y)=c("Seoul", "Tokyo", "Madison", "Chicago", "LA") # 열 레이블 지정
y
write.matrix(y, "wr3.txt") # 이렇게 저장하면 열 이름은 나오는데 행 이름이 없어짐
write.table(y, "wr4.txt") # 열과 행 이름이 모두 나옴. 근데 가독성이 안좋음. 문자는 긴데 숫자는 짧아서 숫자가 문자에 맞춰서 간격이 띄워져야하는데, 그게 안됨.
write.csv(y, "wr5.csv")

# ?mean
# mean(x, trim = 0, na.rm = FALSE, ...)
example(mean) # 오 이렇게 하면 이 함수의 예시를 보여줌. 콘솔에 이 함수를 사용한 코드와 결과까지 세트로 예시로 띄워줌
x<-c(0:10,550)
xm=mean(x)
mean(x,trim=0.1) # trim=은 작은수부터 정렬 했을 때, 양 끝에서 얼마나 자를 것인지를 설정하는 것임. 0.1이면 10% 절사. 이상치의 영향을 줄이기 위해 쓰며, 강건추정량(로버스트 추정)계산에 사용됨.
c(xm, mean(x,trim=0.10))

help.search("mean") # R에서 도움말을 찾아서 알려줌. 이때, 내 R에 설치된 패키지들의 도움말을 검색함. 설치되지 않은 패키지는 제외.
RSiteSearch("mean") # R문서뿐 아니라 R관련 웹 자료도 검색





