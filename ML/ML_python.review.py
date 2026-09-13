# 리스트 생성
# 리스트와 유사하게 튜플이라는게 있음. 리스트는 []를 통해 생성하지만, 튜플은 ()를 통해 생성.
# 튜플은 리스트와 다르게 값의 수정이 불가능함. 절때 바뀌면 안 되는 데이터를 묶어놓을때 유용함.
x=['a', 'b', 'c', 'd', 'e', 'f']
y=[1,2,3,4,5,6]
print(x+y)
print(y+x)

T=range(1,50,10) # (시작값, 끝값(해당값은 제외. 그 이전까지), 간격(증가값))구조임
list(T)
range(7) # 이건 끝값만 나타낸 것. 시작값은 생략시 0부터 시작. 증가값은 생략시 1로 설정
 # 컨트롤 + D 를 하면 현재 줄의 코드를 그대로 복사해서 다음줄에 붙혀넣기 됨
list(range(7))
list(range(2,7)) # 이렇게 나타내면 (시작값,끝값)으로 인식. 증가값은 생략되어 1로 설정됨.

# 조회
print(x[-1]) # 이렇게 인덱스로 조회가 가능함. 리스트에서 맨 처음 원소는 0부터 시작. 맨 뒤에서부터 세면 '-1'로 시작
print(x[2]+x[0]) # 이런식으로도 가능. 문자끼리도 '+' 하면 ca가 출력됨.
print(x[0:2]) # 범위 조회(슬라이싱) [시작:끝 인덱스] 여기에서 끝 인덱스 전까지 조회함. 0,1번째
print(x[-2:]) # 끝 인덱스 생략시 끝까지. 시작 생략시 처음부터

# 연습문제
한글=['가','나','다','라','마','바','사']
print(한글)

한글1=list('가나다라마바사') # 이렇게도 가능. 이렇게 입력하면 원소가 '가','나','다,.....으로 분리됨
print(한글1)

# 리스트에 값 추가
# .append()를 사용하거나, 리스트 + [추가값] 의 형태로 추가함.
한글.append('아')
print(한글)
한글 + ['자'] # 이렇게 하면 추가가 안됨. 이건 print가 생략된 표현이라, 그냥 '자'를 추가해서 출력하는 것임. 실제로 리스트에 추가된 것이 아님.
한글=한글+['자'] # 이렇게 코드를 짜야 '한글' 이라는 리스트에 '자'가 추가되어 저장되는 것
print(한글)

# 값 수정
한글[-3] # '사'가 출력됨
한글[-3] = '빠' # '사' -> '빠'로 수정됨
print(한글)

# 값 삭제
한글.remove('빠') # 리스트에서 '빠'를 삭제
한글.remove(한글[-1]) # 이렇게도 가능
print(한글)

# 연습문제
list1=[1,3,5,7]
list2=[2,4,8]
list2.append(list1[1])
print(list2)
list2.remove(list2[2])
print(list2)
list2[1]
list2[1]=list2[1]*10
print(list2)


# 딕셔너리
# key:value 형태로 이루어짐
dict_a = {'n.1':한글,               # 여기서 한글은 위에 있는 리스트 '한글'임 이렇게도 가능함
          'n.2':'english',
          'n.3':{'ab':[1,4,2], 'cd':[5,2,6]}}    # 딕셔너리 안에 다른 딕셔너리를 넣는 것도 가능하고, 다른 리스트를 넣는 것도 가능
print(dict_a)
dict_a.keys() # 딕셔너리에서 key만 조회
dict_a.values() # 딕셔너리에서 value만 조회
dict_a.items() # 딕셔너리에서 키와 값을 쌍으로 조회

# 딕셔너리 조회시에는 키로 값을 조회함
print(dict_a['n.1'])
print(dict_a['n.1'][:3]) # 이렇게 해당 값이 리스트인 경우 []를 붙혀 리스트에서 어디까지 조회할지도 지정 가능함
print(dict_a['n.3']['cd'][:2]) # 이런식으로도 쓸 수 있음. [5,2]가 출력됨

dict_a['n.4']=[123,456,789]
dict_a['n.5']=list('안녕하세요')  # 이런식으로 딕셔너리에 키:밸류를 추가할 수 있고, 수정도 할 수 있음.
del dict_a['n.5'] # 이렇게 삭제도 가능함
print(dict_a)

# 연습문제
member={'name':['가나디'],
        'age':[2],
        'gender':['m']}
print(member)
# member.append()는 안됨. 딕셔너리에는 .append가 없음. .append()는 리스트에 쓰는거임
member['name'].append('홍길동')
member['age'].append(72)
member['gender'].append('f')
print(member)
member['name']
member['age'][1]

import pandas as pd
path = 'https://raw.githubusercontent.com/DA4BAM/dataset/master/titanic_simple.csv'
data = pd.read_csv(path) # 'data'라는 이름의 데이터 프레임 생성
data.head(10) # 상위 10행만 확인

#연습문제
temp=pd.read_csv('https://raw.githubusercontent.com/DA4BAM/dataset/master/Attrition_simple2.CSV')
temp.head()

air=pd.read_csv('airquality_simple.csv')
air.head()


temp.tail()
temp.describe() # 기초통계정보
temp.describe(include='all') # 이렇게 하면 모든 데이터 타입을 대상으로 통계정보를 보여줌. 문자형/범주형 변수 포함.
print(temp.shape) # 데이터 프레임 크기를 (행 갯수, 열 갯수)로 표현
print(temp.values) # 값 정보 확인
print(temp.columns) # 열 정보 확인
list(temp) # 열 이름이 리스트로 반환
print(temp.dtypes) # 데이터 타입 확인
temp.info()

# 데이터 프레임에서 하나의 열 형태를 시리즈라고 함.
temp['Education']
print(temp['Education'].unique()) # .unique()메서드로 고유값 확인
print(temp['Education'].value_counts())# .value_counts()로 고유값과 그 개수 확인 가능

#기본 집계 매서드. 분석에서 많이 쓰이니 기억 필수
print(temp['MonthlyIncome'].sum()) # 열 합계
print(temp['MonthlyIncome'].max()) # 열 최댓값
print(temp['MonthlyIncome'].mean()) # 열 평균값
print(temp['MonthlyIncome'].median()) # 열 중앙값

# 연습문제
air_ex=pd.read_csv('https://raw.githubusercontent.com/DA4BAM/dataset/master/airquality_simple.csv')
air_ex.head()
list(air_ex)
print(air_ex['Ozone'].max())
print(air_ex[['Temp','Wind']].min()) # 이렇게 여러 칼럼을 조회할 때는, 그냥 'Temp','Wind'로 쓰면 안됨.[]로 묶어줘야 함.
# 안 묶어주면, 아예 칼럼 이름자체가 'Temp','Wind'인 것을 찾기 때문에 오류가 남

# 특정 열 조회 : 방법이 다양함
temp['Age']
temp.Age
temp[['Attrition', 'Age' ]] # 이건 위에처럼 여러 열 조회. []로 묶어주기

# .loc[행, 열]를 이용
temp.loc[:,['Attrition', 'Age']] # 여기서 행 자리에 :는 모든 행을 의미함. 결과는 위의 temp[['Attrition', 'Age' ]]와 동일.
temp.loc[['Attrition', 'Age']] # .loc[]은 열 부분을 생략할 수 있는 반면, 왼쪽과 같이 행 부분을 생략할 수는 없음. 오류가 뜸
temp[['Attrition', 'Age' ]] # 이 형태로 써야 함

# 조건으로 조회 : .loc[조건]을 이용
temp.loc[(temp['DistanceFromHome'] > 10) & (temp['JobSatisfaction'] == 4)] # &는 and의 의미. &,|는 R이랑 비슷하네
temp.loc[(temp['DistanceFromHome'] > 10) | (temp['JobSatisfaction'] == 4)] # |는 or의 의미

temp.loc[temp['JobSatisfaction'].isin([1,4])] #.isin([]) [값1,값2...,값n] 값1 또는 값2 또는..값n인 데이터만 조회
temp.loc[(temp['JobSatisfaction'] == 1) | (temp['JobSatisfaction'] == 4)] # 위와 동일한 의미

temp.loc[temp['Age'].between(25, 30)] # between(값1,값2): 값1~값2까지 범위 안의 데이터를 조회.
# inclusive = 'both'가 기본 값으로, 양쪽 경계를 포함하는 것을 의미. left는 왼쪽, right는 오른쪽만 포함하며, neither은 양쪽 모두 제외.
# between(25,30,inclusive='right') 이런식으로 씀
temp.loc[(temp['Age'] >= 25) & (temp['Age'] <= 30)] # 위와 동일한 의미

# df.loc[조건, ['열 이름1', '열 이름2',...]] 형태로 조회할 열을 리스트로 지정
# **여기서 조건이라는게 결국 행을 지정하는 것임. '조건' 자리가 loc[행,열]에서 행 자리에 해당함. **
temp.loc[temp['MonthlyIncome'] >= 10000, ['Age']]
temp.loc[temp['MonthlyIncome'] >= 10000, ['Age', 'MaritalStatus', 'TotalWorkingYears']] # 이런식으로 여러 열도 가능



#복습문제
#read_csv() 함수를 사용해 다음 경로의 파일을 불러와 titanic 데이터프레임을 만드세요.
#파일 경로: https://raw.githubusercontent.com/DA4BAM/dataset/master/titanic_simple.csv
titanic=pd.read_csv('https://raw.githubusercontent.com/DA4BAM/dataset/master/titanic_simple.csv')
#head() 메소드로 상위 10개 행 데이터를 확인하세요.
titanic.head(10)
list(titanic)
#shape 속성을 사용해 행과 열의 개수를 확인하세요.
print(titanic.shape)
#dtype 속성을 사용해 각 열의 데이터 형식을 확인하세요.
print(titanic.dtypes)
#info() 메소드를 사용해 각 열의 값 개수와 데이터 형식 등을 한 번에 확인하세요.
print(titanic.info())
#value_counts() 메소드를 사용해 다음 두 열의 고유값과 그 개수를 각각 확인하세요.
#Embarked, Pclass
titanic.value_counts(['Embarked','Pclass'])
#Age, Fare 두 열의 최댓값을 한 번에 확인하세요.
print(titanic[['Age','Fare']].max())
#Fare 열을 기준으로 내림차순 정렬해서 상위 10개를 조회하세요.
titanic.sort_values('Fare', ascending=False).head(10) # Fare 열을 기준으로 내림차순 정렬해서 상위 10개를 조회
#Name 열만 조회하세요.
titanic['Name']
#Name, Age, Sex 열만 조회하세요.
titanic[['Name','Age','Sex']]
#Name, Age, Sex 열의 상위 10개 행만 확인하세요.
titanic[['Name','Age','Sex']].head(10)
#나이가 70세 이상인 탑승객을 조회하시오.
titanic.loc[titanic['Age']>=70]
#Fare(운임)의 평균을 Fare_mean으로 저장하고 그 값을 확인하세요.
Fare_mean=titanic['Fare'].mean()
print(Fare_mean)
#평균 운임보다 적게 내고 탑승한 승객을 조회하시오.
titanic.loc[titanic['Fare']<Fare_mean]
#승선지역(Embarked)이 'Southhampton', 'Queenstown' 인 승객을 조회하시오.
titanic.loc[titanic['Embarked'].isin(['Southhampton', 'Queenstown'])]
#나이(Age)가 10대(10이상, 20 미만)인 남자 청소년의 평균 운임(Fare)을 구해 봅시다.
titanic.loc[(titanic['Age'].between(10,20,inclusive='left'))&(titanic['Sex']=='male'),'Fare'].mean()
