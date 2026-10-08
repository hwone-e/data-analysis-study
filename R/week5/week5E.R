#1번
A=c("A","B","C","D","E")
for(i in 1:5){
print(A[i])
}

#1번 다른 방식. 이렇게도 가능함. for문에서는 이렇게 벡터의 원소를 직접 순회할 수 있음.
A <- c("A","B","C","D","E")
for(i in A){
  print(i)
}

#1번 답지풀이
for (i in 1:5) print(LETTERS[i]) # 이렇게 내장된 LETTERS로도 할 수 있네


#2
z=0 # 여기서 z=0을 내부에 넣는 실수를 하지 말자. 그러면 반복되는동안 계속 z=0으로 초기화 돼.
for(i in 1:6){
x=2*i-1
y=sqrt(x)
z=z+y
}
z
#2번 더욱 깔끔한 방식
z=0
for(i in 1:6){
  z=z+sqrt(2*i-1)
}
z
#2번 답지풀이
x=0
for (i in seq(1,11,by=2)){ # 취향차이긴한데 이렇게 시퀀스로도 되네
x = x+sqrt(i)
}
x


#3
x=4
while(x<=8){
print(paste('Iteration',x-3,',','x=',x))
x=x+1
}

#4
#A1
i=1
total=0
while(i<=1000){
if(i%%7 ==0){      # 답지는 if (round(i/7)==i/7)라고 함. 안배운거 같긴 한데, round()는 반올림하는 함수임. 반올림해서 자기자신이 나오면 7의배수지.
total=total+i
}
i=i+1
}
total
#A1 더 효율적인 방식. if문 없이 말그대로 요구조건을 충실히 충족
i=7
total=0

while(i<=1000){
  total=total+i
  i=i+7
}
total

#A2
sev=seq(7,1000,by=7)
sum(sev)
# 얘도 근데 간결하게 하면 그냥 한줄에 다 넣으면 됨. sum(seq(7,1000,by=7))