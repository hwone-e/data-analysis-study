# function(){}
u=1  # 전역변수
v=8  # 전역변수

g=function(x){  # g라는 함수 정의, x는 함수의 인자
  x=x+1         # 입력받은 x에 1을 더함
  u=u+x         # 전역변수 u를 참조해 지역변수 u에 계산 결과 저장
  return(u)     # 계산된 u를 함수의 결과로 반환
}
# 지역변수는 함수 내부에서만 유효
g(v) # x에 8을 넣는 것임.
x # x는 함수 내부에서만 존재하므로, 객체 'x'를 찾을 수 없다고 뜸
u # u는 여전히 1로 출력됨. 함수 내부에서 계산된 u는 지역변수로, 함수 내부에서만 유효. 따라서 전역변수 u=1을 출력
g(v)
g(v) # 두 번 출력해도 같은 값이 나옴. 함수를 호출할 때마다 새로운 지역변수가 생성되기 때문. 
g(c(4,5,10)) # 이렇게도 가능. 각각 함수로 연산해서 나옴
g(4,5,10) # 여기서는 인자가 한개라서 오류가 뜸. 만약 function(x,y,z){}이런식이라면,g(4,5,10)도 가능

#############
myfcn=function(){ # 인자가 없는 함수도 만들 수 있음.
x=seq(1,10)
print(sum(x))
} 
myfcn() # 이렇게 하면 함수 호출 가능.


##############
myfcn1=function(a){
x=seq(1,a)
print(sum(x))
}
myfcn1(10)

##############
myfcn3=function(start,end){
x=seq(start,end)
print(sum(x))
}
myfcn3(start=11,end=100)
myfcn3(11,100) # 위와 동일한 결과 출력
myfcn3(end=100,start=11) # 이렇게 하면 순서를 바꿔서 입력해도 같은 결과가 나옴

##############
quadratic<-function(x){
print("quadratic function y=x^2")
y<-x^2
return(y) # return() 함수가 있으면, 함수는 거기서 값을 반환하고 끝남. 따라서 아래의 print("y")는 무시됨.
print("y") # print()가 return() 윗줄에 위치한다면, 'y'도 출력하겠지
}
quadratic(10)

##############
d.mean<-function(data){
sum(data)/length(data)
}
x <- rnorm(100, mean=4, sd=1) # 기본값은 평균 0, 표준편차 1 
d.mean(x) # x는 원소가 100개인 벡터 하나라서 이렇게 data라는 인자 하나에 전달할 수 있음. d.mean(c(1,2,3))이런 느낌인거지.











