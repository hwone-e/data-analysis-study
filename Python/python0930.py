# 방법 1
num = int(input('Please input any number :'))
if num % 2 == 0:    # //은 몫이고 %는 나머지
    print(f'{num}은 짝수(even) 입니다.')
else:
    print(f'{num}은 홀수(odd) 입니다.')

# 방법 2. 파이썬에서 권장하는 방법. 방법1의 경우에는 숫자가 엄청 길어지면 연산량이 많아지잖아.
num = input('Please input any number :')
if num[-1] in '02468':   # 02468이라는 문자열 안에 포함되어 있냐. ['0','2','4','6','8'] 이렇게 리스트로 해도 됨. 튜플도 마찬가지 가능
    print(f'{num}은 짝수(even) 입니다.')
else:
    print(f'{num}은 홀수(odd) 입니다.')

# 간결하게 나타내는 법
num = input('Please input any number :')
# 조건이 참이면 출력 - if - 조건 - else - 거짓이면 출력할 것
print(f'{num}은 짝수(even) 입니다.') if num[-1] in '02468' else print(f'{num}은 홀수(odd) 입니다.') # 이런식으로 한 줄로.
# 더 줄이는 것도 가능. print를 한 번만 사용. 한 줄로만 작성해야 하는 특정 상황이 있음. 그럴 때 이런식으로 작성함.
print(f'{num}은 짝수(even) 입니다.' if num[-1] in '02468' else f'{num}은 홀수(odd) 입니다.')

# 그리고 위에서 보면, else: 를 이용하여 한 번만 물어봄. if쓰고 또 if써서 짝수와 홀수를 나누는거보다, 그냥 else를 쓰는게 효율이 두 배 좋지.
# 그리고 들여쓰기로 구분을 함. 만약 60점 이하일 경우 'fail입니다'와 '재수강하십시오'를 다음줄에 같이 출력되도록 한다. 그러면 다음줄의 print도 윗줄과 동일하게 들여쓰기를 해줘야 함.
# elif를 이용하여 중첩된 조건 구문을 간단하게 나타낼 수 있음. else:하고 또 if문 넣으면 복잡해지니까. 그냥 elif로 가는거임




