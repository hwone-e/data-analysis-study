def myPrint():
    print("안녕하세요")

e = [1, 2, 'a', ['한국', 'university'], myPrint]
e[4]()

def under_bar(): # 이 경우에는, 언더바를 쓸 일이 많다보니 이런식으로 명령문을 작성해서 응용할 수 있음.
                 # 근데 내 생각에 뭐 이런 단순 print를 반복하는건 걍 변수로 지정해서 쓰면 될 것 같고, 그거보다 뭔가 더 복잡한 무언가 동작이 반복될 때 유용하게 쓸 듯.
    print('_' * 15)


under_bar()  # 함수 실행
list1 = [1, 2, 3, 4, 5]
list2 = ['a', 'b', 'c']
list3 = [1, 'a', 'abc', [1, 2, 3, 4, 5], ['a', 'b', 'c']]
list1[0] = 6        # 6으로 정정
print(list1)        # [6, 2, 3, 4, 5]
list4 = [1, 2, under_bar]
list4[2]()
print(list3[3][1])  # 2 출력. list[3]도 리스트니까 거기서 또 [1]을 출력하는 것임


# 나만의 명령문을 만들기 (나중에 함수 파트 배울 때 자세하게 한다고 하심)
def my_fc():   # def으로 명령문을 define함. 보통 코드 열어보면 맨위에 import나오고 그 아래에 def으로 자주 사용하는 명령문들을 만들어 놓음.
    print('''
    =-=-=-=-=-=-=-=-=-=-=-=-=-=
    이렇게 내가 원하는 명령문을 작성
    =-=-=-=-=-=-=-=-=-=-=-=-=-=''')
my_fc()


# 리스트로 알아보는 네비게이션 안내문 출력 예시. 이런식으로 만들어져 있다고 이해하면 됨.
nv_agent = 'school'

ng_voices = ['', '잠시후', '전방에서', '좌회전', '우회전', '직진', # 여기서 맨앞에 ''은 그냥 인덱스 보기 쉽게 1부터 쓰려고 채워넣은거임
             '유턴', '어린이 보호', '단속', '구역', '버스전용차선',
             '하십시오', '입니다', '과속에', '주정차 단속', '조심하십시오',
             '10m', '50m', '100m', '300m', '1km']

if nv_agent == 'go_left':  # 좌회전 상황일 때 출력 예
    print(ng_voices[1], ng_voices[16], ng_voices[2], ng_voices[3], ng_voices[11])
elif nv_agent == 'left_turn':
    print(ng_voices[1], ng_voices[17], ng_voices[2], ng_voices[3], ng_voices[11])
elif nv_agent == 'u_turn':
    print(ng_voices[1], ng_voices[18], ng_voices[2], ng_voices[6], ng_voices[11])
elif nv_agent == 'school':
    print(ng_voices[1], ng_voices[7], ng_voices[9], ng_voices[12], ng_voices[15])


cities=['서울','부산','대구','인천','용인']
print(cities)
print(cities[:]) # 위와 마찬가지로 모두 출력
print(cities[0:3]) # 이런걸 슬라이싱이라고 함. 인덱스를 사용하여 전체 리스트에서 일부를 반환함
print(cities[-10:10]) # 이런식으로 범위를 크게 지정할수도 있음. 실제로 [10]이나 [-10]이 없어도 이렇게 하면 전체가 출력됨.
city = 'seoul' # city는 문자열이지만, 's'를 [0]로 불러올 수 있음
print(city)
print(city[:])
print(city[-10:10])
print(city[5]) # [5]는 없기 때문에 에러가 뜸
print(city[::2])  # 이런식으로 간격을 지정할수도 있음. 2칸씩 뛰어서 출력
print(city[::-1])  # 이렇게 하면 뒤에서부터 거꾸로 출력함.

cities1 = ['서울', '김포', '부산']
cities2 = ['인천', '대구', '대전', '광주']

print(cities1 + cities2)  # 리스트 붙여서 출력. 리스트끼리도 덧셈을 통해 합칠 수 있음.
korean_cities = cities1 + cities2
print(korean_cities)      # 통합된 새로운 리스트

cities = ['서울', '김포', '부산']

print(cities * 2)  # 리스트 2회 반복하여 출력
korean_cities = cities * 2

print(korean_cities)
print('김포' in korean_cities) # in 연산자는 특정 데이터가 포함되어 있는지를 확인하는 연산자임. 결과값은 True/False로 출력
                              # 해당 값이 리스트에 포함되어 있다면 True가 출력됨.
                              # in 연산자의 활용은 '수강생검색1007.py'에서도 확인 가능

# 리스트 추가 및 삭제 함수
'''
append() 얘는 제일 많이 쓰는 함수임. 거의 얘를 주로 사용함. 리스트에 새로운 값을 추가할 때 사용. cities.append('제주')이런식으로.
extend() 얘는 리스트에 새로운 리스트를 추가할 때 사용. 덧셈으로 생각
insert() 지정한 인덱스에 추가하는 함수임. 추가하면서 자리가 밀리게 됨. 예를 들어 [0]자리에 제주를 추가하고 싶다면 cities.insert(0,‘제주’)
remove() 특정 값을 찾아서 제거함. 
del 이건 인덱스로 제거하는거임. del[0]이런식으로.  
'''
city = 'korea'
cities = ['서울', '부산', '인천', '대구', '대전']

cities[4] = '일산'    # 수정
print(cities)

# cities[5] = '김포'  # 추가 안됨

city += ' university'
cities.append('김포')  # append() 사용예시

print(cities)
print(city)
