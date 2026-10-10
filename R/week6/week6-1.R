# repeat문. 반복 조건을 처음에 지정하지 않고, break를 만날 때까지 계속 반복 
x=0
y=1
repeat{x=x+y
y=y+1
if(y>10)break}
x
y


# More on "repeat" Examples 
x <- 1
repeat {
print(x)
x = x+1
if (x == 6){
break
}
}

##############################
# repeat characters

v <- c("Hello repeat loop")
cnt <- 1

repeat {
   print(c(v,cnt))
   cnt <- cnt+1
    if(cnt > 5) {
      break
   }
}

##############################
# Choose different initial values for the same work

v <- c("Hello repeat loop")
cnt <- 0 

repeat {
   cnt <- cnt+1
   print(c(v,cnt))  # This row has moved after cnt<-cnt+1
   if(cnt >= 5) {   # 만약 if(){break} 이걸 안넣으면 루프는 무한으로 돌아감. 
      break
   }
}

###############################
# 루프 복습

x=1
while(x<6){
print(paste("Iteration",x,", x=", x+3))
x=x+1
}

x=0  # 이런식으로 x를 0부터 시작했을 경우 동일한 출력을 얻기 위해 코드가 어떻게 변하는지도 이해하기! 그리고 항상 initial value를 설정했는지 확인 필수
while(x<5){  # 0부터 시작하니 5 미만으로 조건이 바뀜. 
x=x+1    # x=x+1의 위치가 print보다 먼저 나오게 되면서, print줄의 코드는 수정 없이 가능
print(paste("Iteration",x,", x=", x+3))
}