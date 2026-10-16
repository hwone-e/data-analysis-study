library(datasets)
data(mtcars)
attach(mtcars)
head(mtcars)
summary(mtcars)
labels(mtcars)
#Q1
library(plotrix)
cyl2=sort(cyl) # 원소를 오름차순으로 정렬해줌. 결측치가 있으면 제거. decreasing=TRUE 옵션을 넣으면 내림차순.
table(cyl2) # 이걸로 빈도를 계산해줌
pie3D(table(cyl),main="Number of Car Cylinders", labels=unique(cyl),explod=0.1)

#Q2
par(mfrow=c(1,2))
plot(cyl, mpg, main="Fuel Efficiency 1",xlab="# of cylinders",ylab="MPG")
plot(wt, mpg, main="Fuel Efficiency 2",xlab="Weights",ylab="MPG")

#Q3
par(mfrow=c(1,1))
Area=c('KyungGi', 'Seoul', 'Busan', 'KyungNam', 'Incheon', 'KyungBuk', 'Others')
pop=c(12809, 9776, 3426, 3355, 2923, 2681, 16473)
popp=round(pop/sum(pop)*100,2) # round()는 소수 몇째자리까지 나타낼 것인지. 
popp=paste(Area,popp)
popp=paste(popp,'%',sep='') # 한줄에 Area,popp,'%'를 다 안 넣는 이유는, 이렇게 해서 숫자와 %기호 사이 공백을 없애기 위함. sep=''를 안 하면 자동으로 공백생김
popp
pie(pop,init.angle=90,labels=popp,main="Populations by Area",col=rainbow(length(pop))
# 여기서 데이터는 popp가 아니라 pop임. 우리가 popp를 만든거는 레이블을 생성한거임. 그래서 labels에서 쓰는거고.

#Q4
par(mfrow=c(1,2))
data(quakes)
hist(quakes$depth, breaks=seq(0,700,by=100),main="Earthquake Depth",xlab="Depth",ylab="# of incidents",col=rainbow(7))
hist(quakes$depth, breaks=seq(0,700,by=50),main="Earthquake Depth 2",xlab="Depth",ylab="Relative Frequency",col=rainbow(7),freq=F)
# breaks = 10 을하면 막대 개수를 10개로 맞춤
# breaks = seq(0,10,by=1)은 breaks=c(0,1,2,3,4,5,6,7,8,9,10)과 동일함
	



