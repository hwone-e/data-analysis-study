# Vector은 1차원 , Matrix는 2차원, Dataframe도 2차원 & 다양한 타입의 데이터 가능, Array는 2차원 이상
# Facor은 1차원(분류 데이터), Time series는 2차원, List는 2차원 이상 & 다양한 타입의 데이터 가능

# Vector
aaa = matrix(1:9,ncol=3)
aaa
dim(aaa) # 행과 열의 수를 출력
as.vector(aaa)
dim(as.vector(aaa)) # 출력하면 NULL이 나옴. 벡터는 dim 속성이 없음

bbb=c(TRUE, TRUE, FALSE)
as.numeric(bbb) # TRUE는 1 FALSE는 0
as.matrix(as.vector(aaa)) # 9행 1열의 행렬로 변환됨
dim(as.matrix(as.vector(aaa))) # 9 1이 출력

x<-10
rep(x,3) # x를 3번 반복하라

x<-5
x

x<-NULL
x

ls()
objects() # ls()와 동일. 생성된 객체를 보여줌

rm(bbb)
ls()

value=10
mode(value) # 데이터 타입
length(value) # 원소의 개수


string="R study" 
mode(string)
length(string)

x=2>4
mode(x)

z=2+3i
mode(z)


value=c(3,6,23,NA)
value
is.na(value) # 무엇이 NA인지 판단. T/F로 출력
which(is.na(value)==TRUE) # 몇 번째가 TRUE인지 알려줌. 이 경우 4가 출력

1/0 # inf :intinity가 출력
log(0) # -inf 출력
log(-1) # NaN이 출력. Not a Number

is.na()
is.finite()
is.infinite()
is.nan()
is.numeric()
# 모두가 의문문임. Is there ~?

x.num=c(1,2,3,4,5)
x.char=c("Korea","japan","china")
x.logic=c(T,T,F,F)
y.num=c(x.num,x.num)
y.num
y.num=c(x.num,x.char)
y.num
is.numeric(y.num) # 하나라도 숫자가 아니면 False 출력

Height=c(168,173,160,145,180)
Weight=c(80,65,92,53,76)
BMI=Weight/(Height/100)^2
BMI

cbind(Height,Weight) # 두 벡터를 열 방향으로 결합해서 행렬을 만듦
data=data.frame(Height,Weight) # 두 벡터를 열로 가지는 데이터프레임을 만듦
data
data$BMI=BMI  # $BMI : BMI라는 변수를 추가
data

cbind(Height,Weight)$BMI # 이렇게 하면 안됨
cbind(Height,Weight,BMI) # cbind는 추가할거면 이렇게 해야함

sort() # 오름차순 정렬
order() # 정렬할 순서를 알려줌. 
m=c(123,412,32,12,3)
order(m) # 5 4 3 1 2 가 출력됨. 5번째가 젤작은거, 4번째가 그다음, 3번째가 그다음, 1번째가 그다음 이렇게 와야한다고

head(m,2) # 그냥 head(m), tail(m) 이렇게 쓰면, 기본값이 6이라 6개씩 보여줌
tail(m,3)

prod(m) # 모든 원소를 곱함
cumsum(m) # [1] [1]+[2] [1]+[2]+[3]...
cumprod(m) # [1] [1]*[2] [1]*[2]*[3]...

rep(m,each=2) # 각 원소마다 2번씩 반복
rep(m,time=2) # 반복을 전체 2번

seq(1,30,2) #(시작,끝,간격)
seq(1,30) # range()랑 비슷한 느낌인데, range랑 다르게 seq()는 끝값도 넣음
seq(-pi,pi,length.out=12) # length.out=12를 하면 총 개수가 12개가 되도록 간격을 알아서 조절.
seq(-pi,pi,length=10) # length라고만 해도 length.out으로 인식하긴 함. 총 개수 10개 되도록 알아서 간격 조절해서 출력함
# 간격은 (끝값-시작값)/n-1 으로 구할 수 있음. (n : 총 개수)

seq(1,30,by=2,length=15) # 이런건 에러남

x<-seq(1,30,2)
x
seq(1,30,along.with=x)# along.with : x와 같은 길이로 균등하게 값을 만들어라. 첫값과 끝값을 포함.
rev(seq(1,30,2)) # 리버스. 시퀀스를 뒤에서부터 출력

paste("no",1:5) # 얘는 그냥 문자로 전부 이어붙힘
paste(12,2141,123123,2,'daw',213,pi)
paste(1:10,2,sep="-") # 요런식으로 지정 가능함. 1-2 2-2 3-2 이런식으로 출력됨
paste("Today is",date())
as.character(21,214,'dawd') # as.character()은 문자로 변환하는 함수라 paste랑 유사한데, 이렇게 쓰면 21만 출력됨. 첫 번째 인자만 변환대상
as.character(c(21,214,'dawd')) # 이렇게 c()로 묶어주면 됨
  