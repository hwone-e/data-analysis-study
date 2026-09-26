# factor(x=character(), levels, labels=levels, exclude=NA, ordered=is.ordered(x), nmax =NA)
# x       → 뭘 factor로 만들 거냐
# levels  → 어떤 범주를 사용할 거냐. R에서는 범주를 level이라고 함.
# labels  → 그 범주의 이름을 뭘로 표시할 거냐
# exclude → 어떤 값을 제외할 거냐
# ordered → 범주에 순서를 부여할 거냐
x=c(1,2,3,4,5)
x
factor(x)
x+3
y = factor(x)
y
y + 3 # y는 factor이라서 이렇게 3을 더할 수 없음

factor(x,levels=c(1,2,3,4)) # 이렇게 하면 5는 레벨이 없어서 NA가됨. 지정된 레벨에 속하지 않으면 NA가 됨.
factor(x,levels=c(1,2,3,4),labels=c("a","b","c","d")) # 해당 범주에 이름을 붙힘. 
factor(x,levels=c(1,2,3,4),ordered=TRUE) # 순서가 부여됨. 1<2<3<4이렇게

is.factor(y) # y=factor(x)이므로 TRUE가 출력됨
is.factor(x) # x는 factor이 아니야

z=as.factor(x) # 이건 그냥 x를 factor로 만들어줘 하는 함수임. factor()과 유사한데, 이건 좀 일차원적인 느낌. 단순히 만들어 달라는거고, factor()은 세부 설정까지 가능
is.factor(z) # TRUE가 나옴

gender=c("Male","Female","Female","Male","Male")
gender=factor(gender) # gender을 팩터로 만들어줌
gender
smoking=c(1,1,2,3,1)
smoking=factor(smoking)
smoking # 레벨이 1 2 3인 것을 확인가능
levels(smoking)=c("none","ex-smoker","smoker") # 현재 factor가 가지고 있는 레벨을 변경

# != : Not equal to
# !x Not x
# isTRUE(x) : test if X is true

gender=c("M","F","F","M","F")
grade=c("A","B","A","B","A")
gender=="F"
which(gender=="F") # 몇번째가 조건을 만족하는지. 이경우에는 2 3 5 출력
gender=="F" | grade=="A" # |는 or을 의미. 하나라도 T면 T를출력함. 둘 다 F여야 F임. &는 반대로 둘 다 T여야 T

# if문 : if(condition)statement 구조
x=c(1:4)
y=c(2,1,4,5)
if(sum(x)<sum(y))print(x)
if(sum(x)>sum(y))print(x)  # 조건을 만족하지 못하였으므로, 아무것도 출력하지 않음.
if(mean(x)>mean(y))print("Mean(x)>Mean(y)")else print("Mean(x)<Mean(y)") # else를 이용하여, 조건을 만족하지 못한 경우도 설정이 가능

# 조건이 여러개인 경우, 아래와 같은 구조로 입력함. if(조건1){statement1}else if(조건2){}else{}  중간부분을 else if로 여러개 추가 가능
score=82
if(score>=90){
grade="A"
} else if(score>=80){
grade="B"
} else{
grade="C"
}
grade

# ifelse(logic,A,B) : 로직이 참이면 A, 아니면 B
score1=c(4,51,75,84,99,21) 
ifelse(score1>=90,"A",ifelse(score1>=80,"B","C")) # 여기서는 처음 90점 미만이면 새로운 ifelse문으로 넘어감. 6개 원소 각각에 대하여 진행

x <-c(1, 2, 3)
x <- factor(x)
if(is.factor(x)) length(x) # 조건이 참이면 뒤를 출력이므로, length(x) 값이 출력됨

x <- c("Seoul National","Korea","Yonsei")
if(is.factor(x)) {
length(x)
} else if(is.integer(x)) {  # integer : 정수
sum(x)
} else {
paste(x,"University",sep="-") # paste로 여러 문자를 이어붙힐수 있음
}


# switch() : if / else if / else가 여러 개 이어지는 상황을 깔끔하게 표현. switch(식, 경우1=실행1, 경우2=실행2, 경우3=실행3) 구조임. 식은 경우 1,2,3을 결정하는 식
x=c(1,2,3,4)
type="var"
switch(type, mean=mean(x), sum=sum(x), var=var(x)) # 이건 var이라는 이름을 가진 애를 찾아라. 근데 var이라는 이름의 애가 var(x)값을 품고있으니 값이 출력되는거임.
# 그리고 분산 식은 (Xi-X바)^2의 합을 n-1로 나눈 것을 여러 번 설명하심.

switch(1, mean=mean(x), sum=sum(x), var=var(x)) # 이렇게 하면 첫 번째(mean)을 출력함.
switch(2, mean=mean(x), sum=sum(x), var=var(x)) # 이러면 sum을 출력




























