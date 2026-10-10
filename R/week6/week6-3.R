####################
f_default <-function(data){
d.min<-min(data)
d.max<-max(data)
d.med<-median(data)
result<- NULL                
# Make an empty object for multiple outputs
result$min <-d.min # save your outputs with proper names
result$max<- d.max
result$med<- d.med
return(result) 
}
AAA = f_default(rnorm(100))
AAA$min
AAA$max
AAA$med
is.function(f_default)

##################
args(log) # args()는 함수가 어떤 인자를 받는지 확인하는 함수임.
args(f_default) # 인자를 data로 설정했으니 data가 나옴
attributes(f_default) # attributes()는 객체가 가지고 있는 속성을 확인하는 함수
f_default

##################
func=function(x,y){
z=(x+2*y)^2
return(z)
}
func(1,2)
x=c(1,2,3)
y=c(2,3,4)
func(x,y)


################## 피어슨 상관계수. 표본공분산Cov(x,y)을 Sd(x)*Sd(y)로(표본표준편차의 곱) 나눈 것으로 표현할 수 있음.
# 표본공분산은 피어슨상관계수 식에서 분자에 n-1이 나누어진 형태. 표본표준편차도 마찬가지로 n-1이 쪼개져서 하나씩 루트안에 들어간 형태
# 피어슨 상관계수는 -1~1사이의 값을 가지고, 이는 선형적인 관계만 알 수 있다. 따라서 비선형적 관계가 있는 경우 피어슨 상관계수로는 판단할 수 없다. 
# 즉 상관계수가 0이라고 관계가 없는 것이 아님. 선형적 관계를 확인할 수 없는 것임.
# 상관계수의 절댓값이 0.3보다 작으면, 약한 선형관계라고 하고, 0.3~0.6은 보통(moderate)의 선형관계, 0.6보다 크면 강한 선형관계라고 함.
cor=function(x,y){
cxy=sum((x-mean(x))*(y-mean(y)))
vx=sum((x-mean(x))^2)
vy=sum((y-mean(y))^2)
crr=cxy/sqrt(vx*vy)
return(crr)
}
x=c(1,3,5,2)
y=c(1,4,6,8)
cor(x,y)

################## x=(x1,x2,x3)와 y=(y1,y2,y3) 사이의 거리 계산
dist=function(x,y){
d=sqrt(sum((x-y)^2))
return(d)
}
x=1:10
y=10:1
dist(x,y)




