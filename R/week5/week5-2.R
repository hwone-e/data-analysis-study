# while(condition) { body } / for문이랑 유사한데, 차이점은 while은 조건이 참인동안 반복하는 것. for문은 처음부터 얼마나 반복할지가 정해져 있음.
x=1
while(x<=5){    # 반복 조건이 False가 되면 loop가 종료됨.
print(rep(x,x)) # 1은 1번, 2는 2 2, 3은 3 3 3 이렇게 출력
x=x+1
}

y=6
while(y<=10){
print(y)
}           # 이렇게 증가식(갱신식)이 빠지면, 루프는 무한으로 계속 출력됨. 
            # 위에서는 x=x+1이라는 증가식이 있어 x<=5인 지점이 오게 되고 루프가 멈추는데, 여기서는 그게 없으니 계속 출력됨

x=0; i=1    # 코드를 보고 구조를 이해하는 것이 중요해보임.
while(i<=10){
x=x+i
i=i+1
}
x


# 아래는 연습을 위한 예시문
# Sum of numbers 1:10
x=0; i=0         # i가 0이면 1, x=1, i가 1이면 2, x=1+2, i가 2이면 3, x=1+2+3 .. i가 9이면 10, x=1+2...+10
while(i<10){
i=i+1  # while문을 스스로 만들어보며, 무엇이 먼저 업데이트되고, 루프 내부에서 어떤식으로 변화하는지를 이해하는 것이 중요
x=x+i
}
x



# Another same calculation with different initial value.
x=0; i=1
while(i<=10){          # 얘도 결국 1부터 10까지 더하는 것과 동일
x=x+i
i=i+1}
x


#### while loop with break statement

i <- 1
while (i <= 6){
if (i==4)    # if문 뒤에 {}가 생략되면, if문은 다음 문장 하나만 포함함. 
break;       # break는 남은 코드는 무시하고 루프를 종료. while문 즉시 종료라고 생각. 여기서는 if문의 i==4 라는 조건에 도달하면 실행
print(i*i)
i = i+1
}
# Once the value reaches i=4, 
# then the break statement terminates the loop. 
# So only the square of values from 1 to 3 is printed.


#### while loop with next statement  
# "next" statement will skip one step of the loop. 
# Once the next statement is read, the loop will skip the while once.
 
i <- 1
while (i <= 6) {
if (i==4)
{
i=i+1
next; # 얘는 점프같은 느낌이지. i==4일때만, 뒤에 코드 뛰어넘는거지. 그래서 16은 출력이안됨
}
print(i*i);
i = i+1;
}
#  Once the value reaches i=4, 
# then the next statement skips the loop 
# and the square of 4 i.e 16 is not printed


################################## 
# Checking Central Limit Theorem #
##################################
# Exponential distribution is highly skewed # 지수 분포 - 어떤 사건이 발생할 때까지 걸리는 시간
rexp(10)
hist(rexp(1000)) # 지수분포 예시. n이 충분히 크면 중심극한정리에 따라 정규분포와 유사하


sam1<- rexp(180) # 지수분포에서 랜덤하게 180개를 뽑음. 지수분포는 모두 양수
hist(sam1,nclass=30,main = "Distribution of exponential data") # nclass는 몇개의 구간으로 나눌 것인지. 많을수록 막대가 좁아짐
abline(v=mean(sam1),lwd=2) # abline()은 직선 긋기. v는 버티컬


#################################
# By the Centeral Limit Theorem, (even if the original data is skewed) # 중심극한정리 C.L.T.에 대한 설명
# the sampling distribution of the mean is approximately normal.

n.rep=3000 # 총 반복 수를 3000으로 설정
mean.exp<- NULL # 빈 벡터를 생성
n.iter = 0 # 반복 횟수를 셀 변수 지정
while(n.iter< n.rep)
{
set.seed(n.iter*33) # 이런식으로도 되네. 각 반복에서 다른 seed를 사용하면서도 결과 재현이 가능하도록 함.
sam1<-rexp(180)
mean.exp<- c(mean.exp,mean(sam1)) # 계산한걸 반복마다 추가해가는거지

hist(mean.exp,nclass=50,main=expression(paste("Distribution of  ",bar(X))),xlab="",prob=T,ylab="") # expreesion()은 수식 표현할때 사용
abline(v=mean(mean.exp),lwd=2)
n.iter<- n.iter+1
}
length(mean.exp)

#################################
mean.xbar<- mean(mean.exp) # 지수
sd.xbar<- sd(mean.exp) # 표본 평균의 표준편차

# 아래 세 줄은 확률밀도함수를 그리는 코드임
seq.x<- seq(0.7,1.3,by=0.01) # seq(시작, 마지막, by=증가 간격)으로 일정한 간격의 수열을 생성함. 
seq.y<- dnorm(seq.x,mean=mean.xbar,sd=sd.xbar) # dnorm()은 정규분포의 확률밀도함수를 계산하는 함수. (위치, 평균, 표준편차)
lines(seq.x,seq.y,lwd=3) # 정규분포 곡선 추가