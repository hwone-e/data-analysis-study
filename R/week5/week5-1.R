for(i in 1:5){print(i)} # for(variable in vector){body} / for(variable in sequence){statement}
x=0
for(i in 1:10){  # 1부터 10까지의 합
x=x+i
}
x
sum(1:10)

for(i in 2:9){
 for(j in 1:9){
  print(paste(i,"*",j,"=",i*j)) # i가 2일때 j는 1부터 9까지 반복. 3일때 1부터 9까지 반복 이런구조라고 생각하면 됨.
 }
}

######################################

for (i in 2025:2035){
  print(paste("This year is", i))
}

######################################

for (year in 2025:2035){
  print(paste("This year is", year)) # 변수를 꼭 i로 둘 필요는 없음.
}

######################################

# Between 1 to 10, print odd numbers only

for ( i in 1:10){
 if (round(i/2)!= i/2) print(i) # round()함수는 반올림하는 함수임. 여기서는 값이 홀수면 반올림을 하게 되고, 두 값이 달라지므로 조건이 참이 됨.
 }                              # != : Not equal
                                # 값이 짝수면 반올림을 해도 동일하니까 조건이 거짓이되고, 따라서 아무것도 출력하지 않음. 홀수만 출력함.
   
######################################

# Between 1 to 100, record integer numbers evenly divided by 7. 

multiple.seven<- NULL  # NULL로 빈 벡터 생성. 
for ( i in 1:100){
 if (round(i/7)== i/7){ 
multiple.seven<- c(multiple.seven,i) # 기존 벡터에 추가하는거임. 벡터속에 벡터를 넣는 형태가 좀 이질감이 들긴 하는데, 걍 i를 하나씩 추가한다고 생각
print(multiple.seven) # 이 print가 어디에 위치하냐에 따라서도 결과가 다름. if문 안에 있으면, 7의 배수일때만 출력. 즉 하나씩 추가될때마다 출력.
}                     # 만약 print가 if문 바깥이고 for문 안에 있으면, 1부터 시작해서 1,2,3,4...올라가면서 매번 출력하게 됨. 따라서 총 100번 출력하겠지
}                     # print가 완전히 바깥에 있으면, 모든 반복이 끝나고 최종 결과만 출력 

multiple.seven

######################################

multiple.seven<- NULL
for ( i in 1:100){
 if (round(i/7)== i/7) multiple.seven<- c(multiple.seven,i) 
# you can remove "{ }" only if you write in the same row.
}


######################################

# Use random seed for data generation.
# Sampling distribution of mean of N(0,1) when samples size is 100
# In theory, sampling distribution is N(0,1/10), where 1/10 is a standard deviation. 표본평균의 분포는 N(0,1/10)을 따름. 루트n은 10이니까.
# 여기서 1/10은 표본평균의 표준편차(표본오차)

n.sam=100
n.rep=2000
mean.vec<- rep(0,n.rep)

for (j in 1:n.rep){
set.seed(j) # 난수 생성의 시작점을 j로 고정시킴. 
data<- rnorm(n.sam) # 표준정규분포를 따르는 랜덤한 숫자를 n.sam개(100개) 생성 
mean.vec[j] <- mean(data)
hist(mean.vec[1:j],main=expression(paste("distribution of  ", bar(X))),xlab= expression(bar(X)))
} # expression()은 표현식을 만드는 함수임. 그래프 제목, 축 이름, 범례 등에 수학식을 넣을때 사용. 여기에서는 엑스바(표본 평균의 기호)를 나타내기 위해 사용. xlab=은 x레이블
#실행하면 히스토그램이 2천번 생성됨.(창이 2천개 생기는 것은 아니고, 그래프 창 하나가 계속 바뀜

abline(v=0,lwd=2) # v=0은 vertical line을 x-0위치에 그으라는 것임. 가로선은 'h='으로 나타냄. abline()은 그래프에 직선을 긋는 함수
length(which(mean.vec>= -0.1 & mean.vec <=0.1))/n.rep  # Within 1 SD. 약 68%
# 얼마나 있는지 which로 찾고 length로 묶어서 몇개인지 파악. 그리고 n.rep으로 나누어서 비율을 구함. 이게 68%랑 비슷하게 나오겠지.

abline(v=c(-0.1,0.1),lwd=2,col="red")
length(which(mean.vec>= -0.2 & mean.vec <=0.2))/n.rep  # Within 2 SD. 약 95%
abline(v=c(-0.2,0.2),lwd=2,col="blue",lty=2) # 마찬가지로 얘는 95%정도 나오겠지

######################################


set.seed(1) # 이렇게 지정을 하면, 10개짜리 난수를 여러번 생성해도 모두 같은 숫자의 10개 벡터가 생성됨. 공용 키카드 같은 느낌임.
rnorm(10) # 우리가 그냥 rnorm(10)만 계속 실행을 하면 매번 값이 달라짐. 근데 set.seed()를 쓰고, 같은 값을 넣으면 같은 난수가 생성이 됨. 따라서 내 결과를 다른 사람도 동일하게 재현할 수 있음.









































