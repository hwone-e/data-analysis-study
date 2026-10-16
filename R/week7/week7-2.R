# hist(x, breaks=“Sturges”, freq=NULL, probability=!freq, col=NULL, main=NULL, xlim=NULL, ylim=NULL,…)

data(quakes)  # import quakes data
head(quakes)
mag <-quakes$mag # allocate vector data showing the magnitude of earthquake
summary(mag)   # get rough idea of the values of mag.
hist(mag,main="Dist of earthquake magnitudes", xlab="magnitude", ylab= "number of incidents",   col=rainbow(7),breaks=seq(4,6.5,by=0.5))
# col : color of each bar in the order set
rainbow palette : col=rainbow(7)
# setting the interval of bars : interval of 4~6.5 by 0.5 spacing
# breaks 구간(bin)의 개수 또는 경계 지정
windows()
hist(mag,main="Dist of earthquake magnitudes", xlab="magnitude", ylab= "number of incidents",   col=rainbow(7),breaks=seq(4,6.5,by=0.1))
hist(mag,main="Dist of earthquake magnitudes", xlab="magnitude", ylab= "number of incidents",   col=rainbow(7)) # breaks옵션을 안넣으면 정규분포 가정 적절한 구간 수를 자동으로 설정해줌
hist(mag,main="Dist of earthquake magnitudes", xlab="magnitude", col=rainbow(7),freq=F) #freq<->probability 두개가 서로 반대임. freq=F를 하면 밀도로 표시
# 원래 기본값음 freq=T로 빈도수를 표시하지만, 구간 너비가 일정하지 않으면 기본값으로는 밀도를 표시함.
hist(mag,main="Dist of earthquake magnitudes",xlab="magnitude",ylab="number of incidents",  col=colors(10), breaks="Sturges")
# 여기서 col=colors()는 무지개색이랑 좀 다른 느낌의 색들임

# barplot(height, names.arg= NULL, legend.text= NULL, beside = FALSE, horiz = FALSE, density = NULL, angle=45,col = NULL, border = par(“fg”),main = NULL, sub = NULL,…)
freq <- c(10,30,20,40)
barplot(freq, main="no_name")
category <-c("A","B","C","D")
barplot(freq, main="yes_name",names.arg=category) # names.arg=category : 각 막대 아래에 표시할 이름을 'category'벡터에서 가져옴
colors() # 색상 명단확인가능














