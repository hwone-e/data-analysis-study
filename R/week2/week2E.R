attach(faithful)
data(faithful)
faithful

table(faithful) # 이런 수치 데이터에는 빈도 수 확인이 적합하지 않은듯
length(faithful)
factor(x$eruptions) # x는 데이터 프레임이므로 그냥 factor(x)를 하면 한됨. 열을 지정해야함

par(mfrow=c(1,3))
plot(eruptions, waiting)
abline(lm(waiting~eruptions),col='red',lty=2) # lty는 선의 형태. 1은 실선(기본), 2는 점선, 3는 파선(촘촘 점선), 4는 일점쇄선, 5는 긴 파선..
plot(eruptions, waiting)
abline(lm(waiting~eruptions),col='blue',lwd=3)
plot(eruptions, waiting, main="waiting time VS eruptions",pch=8,cex=0.7) # 산점도에서 점의 모양은 pch= 로 지정

par(mfrow=c(1,2))
boxplot(waiting,main="Boxplot of Waiting Time",col='white')
boxplot(eruptions, main="Boxplot of eruptions",col='white')

mean(waiting)

x=ifelse(waiting<=mean(waiting),"short","long")
x
factor(x)
table(x)

pie(table(x),col=c('red','purple')) # 벡터c를 이런식으로 응용하여 파이차트의 각 파이의 색을 지정 가능
