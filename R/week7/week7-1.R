demo(graphics)
Return

install.packages("plotrix")
library(plotrix)
data(warpbreaks); attach(warpbreaks)
pie3D(table(breaks))
unique(breaks)
pie3D(table(breaks),labels=unique(breaks))
pie3D(table(wool),labels=unique(wool))
pie3D(table(tension),labels=unique(tension))
pie3D(table(breaks),labels=unique(breaks),explode=0.3)# 얼마나 벌어지게 할지. 
pie3D(table(tension),labels=unique(tension),explode=0.3,shade=0.6)# 그림자 설정
sort(breaks) # 오름차순 배열인듯
breaks2=sort(breaks)
table(breaks2)
radial.pie(table(breaks2),labels=unique(breaks2)) # 빈도수를 반지름으로 해서 나타내는 파이차트?

library(graphics)
# pie(x, labels, clockwise=FALSE, init.angle=if(clockwise)90 else 0,col=NULL, main=NULL,…)
x<-c(9,15,20,6)
label<-c("sales1","sales2","sales3","sales4")
pie(x, labels=label, main="Sales by division")
pie(x, init.angle=90, labels=label, main="Sales by division")

pct<-round(x/sum(x)*100)  # relative ratio (percentage) for sales
label<-paste(label,pct)  # attach percentage values (pct) for each division
label<-paste(label, "%",sep=" ") # attach % after each division
pie(x,init.angle=90,labels=label, col=rainbow(length(x)), main="Sales by division")   # set the colors of the slices as rainbow according to the amount of sales (x)
pie(x,labels=label, col=rainbow(length(x)), main="Sales by division", clockwise=T)# clockwise=T를하면 init.angle을 안해도 자동으로 90도로 나옴. 시계방향으로 순서대로 나오는듯
pie(x,labels=label, col=rainbow(length(x)), main="Sales by division") # 이렇게 다 빼면 0도부터나옴
pie(1:12, labels=seq(1:12), col=terrain.colors(12))
pie(rep(1,12), labels=seq(1,12), col=terrain.colors(12)) # 위에거는 c(1,2,3,4...)이고, 이건 1을 12번 반복하는거임. 따라서 위아래 조각 비율이다름.
pie(rep(1,12), labels=seq(1,12), col=cm.colors(12)) # 핑크, 파랑으로 나옴

data(women)    # load women dataset built in R
women     # print women dataset
weight<-women$weight # 1) allocate weight in women dataset as weight 
plot(weight)   # plot values of weight 
height<-women$height # 2) allocate height in women dataset as height
plot(height, weight, xlab="height", ylab="weight")  # graph weight(y) for height(x)
plot(height, weight, xlab="height", ylab="weight",type='l', lty=2,lwd=3,main="lines") # 타입이 일이 아니라 엘임
# 강의자료에있는 변수들 정리가 필요
text(67,130,"test") # 해당위치에 "test"라는 문구를 띄움




x <-c(4.1, 4.9, 5.3, 4.3, 3.5, 3.0, 3.1, 2.8)
plot(x)  
windows() # 창하나 더띄울수있음
plot(x,type="l")  
z <- c (4.3, 4.8, 5.1, 4.2, 3.1, 3.2, 3.0, 2.7)
lines (z, col="red")  
plot(x-z, type="b") # 두 데이터 빼는 연산(x-z)
abline(h=0)

plot.f=function(f,a,b){   #'plot.f'가 함수의 이름임. 이름을 지정한거임.(f,a,b)에서 f는 그래프로 그릴 함수. a는 x축 시작값, b는 x축 끝값
xval=seq(a,b,length=100) # a에서 b까지 총 100개의 숫자를 생성. 생성 숫자가 많을수록 더 그래프가 좀 정확해지겠지? 잘게 나누니까
plot(xval,f(xval),type="l")
}
plot.f(sin,0,10) # 이렇게 함수를 만들어놓으면 유용하게 쓸 수 있음. sin을 넣으면 사인그래프, cos를 넣으면 코사인그래프를 띄울 수 있음.
# 여기서 선 굵기나 종류를 바꾸고싶으면 plot.f(sin,0,10,lwd=2,lty=3)이런식으로 하면 안되고, 내부의 plot함수 코드를 수정해야함.

x = c(9,15,20,6)
par(bg="yellow"); plot(x,col="red",pch="A",cex=2) # pch는 심볼 모양, cex는 사이즈 설정
# par() : 그래프의 여러 설정을 조정하는 함수 bg : background(배경색)
points(x+1, pch=3, cex=3) # 얘는 기존 그래프 위에 점을 추가하는거임. 실행할때마다 추가됨. 
























