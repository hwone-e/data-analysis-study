# Array
# array(data, dim=c(column#,row#,matrix#), dimnames=NULL) array()는 여러 차원의 데이터를 만드는 함수
array(1:100)
array(1:100,c(2,5,10)) # 이렇게 하면, 1~100까지 숫자(데이터)를 2행 5열의 구조를 가진 10개의 행렬로 생성할 수 있음. 2*5*10=100

arr=array(1:24,c(3,4,2))
arr[,,1] # 첫 matrix 전체 
arr[,2,1] # 첫 matrix의 2열
arr[1,2,1] # 첫 matrix의 1행 2열

arr2=array(1:32,c(1,24,2)) # 이런것도 생성은 됨. 
# 1*24*2=48이라서 데이터 개수보다 칸수가 이렇게 많을 경우에는, 처음으로 돌아가서 채움. 데이터가 부족하면 반복해서 채우고, 많으면 필요한 만큼만 사용.
arr2

# dim()함수를 이용하여 array를 만드는 법
arr3=c(1:24)
dim(arr3)=c(3,4,2) # 이런식으로도 가능
arr3 

arr4=array(1:8,c(2,2,2))
arr5=array(8:1,c(2,2,2))
arr4 + arr5
arr4*arr5 # 얘는 행렬곱이 아니라, 원소별 곱임. 동일 자리 원소끼리 곱
arr4%*%arr5 # 원래 %*%는 행렬곱 연산자인데, Array에서는 다름. 얘는 arr4*arr5의 모든 원소를 더한 값을 의미
sum(arr4*arr5) # 얘랑 거의 동일함. arr4%*%arr5는 벡터에서의 내적 같은 느낌이라고 생각

# list
a=1:10
b=11:15
cbind(a,b) # 이렇게 결합하면 b는 원소가 5개라서 재활용이 들어감.
klist=list(vec1=a, vec2=b, descrip="example")   # R에서 list()는 파이썬의 딕셔너리와 유사하다고 생각하면 됨. 
klist
klist2=list(a,b,"example") # 이름을 붙히고 안붙히고 차이
klist2
klist$vec2
klist2[[2]] # klist2는 이름이 없어서 이렇게 [[]]로 찾아야 함
klist2[[1]][6]
length(klist2) # 리스트의 length는 리스트의 항목의 수. 전체 원소의 수가 아니라. klist2 같은 경우에는 a,b,"example"이렇게 총 3개
mode(klist)
names(klist2) # 리스트의 이름을 알려줌. klist2의 경우 이름이 없어서 NULL이 출력됨.
names(klist) # klist의 경우 "vec1", "vec2", "descrip"이 출력됨


# Data frame
aaa=read.table("story.txt",header=T)
dim(aaa)
bbb=read.table("story.txt",header=T,row.names='num') # row.names='num'은 파일 내 'num'이라는 열을 행 이름(row name)으로 사용하라는 것
dim(bbb)

LETTERS   # A부터 Z까지 대분자 알파벳 나열
LETTERS[1:3] 
char1=rep(LETTERS[1:3],c(2,2,1)) # A를 두 번, B를 두 번, C를 한 번 반복하라
char1
num1=rep(1:3,c(2,2,1))
num1
test1=data.frame(char1, num1)
test1
test1$char1
test1$num1
test1[,1] # 1열 출력
test1[,2] # 2열 출력

df=data.frame(x=1:3,y=c("a","b","c"),z=rnorm(3)) # rnorm(3)은 표준정규분포에서 3개를 랜덤으로 뽑음
df
str(df) # str()은 데이터의 구조를 보여줌 
df$z
df$w=3:1 # w열이 추가가 됨
subset(df,x==1|y=="b") # '|'는 'or'의 의미. 두 조건을 만족하는 데이터만 골라옴
