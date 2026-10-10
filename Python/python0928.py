A=int(input('수를 입력하세요: '))
result = A > 10 and A <= 50 # 대부분의 코딩에서는 이러한 방식으로 표현. 파이썬에서 이렇게 치면 밑줄이 그이는데 마우스 갖다대면, 아래처럼 간단한 방식을 추천해줌
print(result)

result = 10 < A <= 50 # 파이썬에서만 이러한 방식을 허용함.
print(result)

result = A < 10 or A >= 50
print(result)

result = not A # 얘는 0일때만 True가 출력된다
print(result)

print(
"""
**************
     SOJU
**************
""")
나이=int(input('나이가 어떻게 되십니까? :'))
if 나이 >= 20 and 나이<=50 :
    print('여기 있습니다.')
elif 나이 > 50 :
    print('건강에 안 좋습니다.')
else:
    print('구매가 불가능합니다.')


점수=int(input('점수를 입력하세요 :'))
if 점수 > 59:
    print('Pass 입니다.')
else:
    print('Fail 입니다.')
    print('재수강 하시길 바랍니다.')

점수 = int(input('점수를 입력하세요 :'))
if 점수 >= 95 and 점수 <= 100:
    print('A+학점 입니다.')
elif 점수 >= 90 and 점수 < 95:
    print('A학점 입니다.')
elif 점수 >= 85 and 점수 < 90:
    print('B+학점 입니다.')
elif 점수 >= 80 and 점수 < 85:
    print('B학점 입니다.')
else:
    print('재수강 입니다.')
# 근데 좀 더 줄일수도 있음. if->elif 조건문에서는 위에서부터 검사를 하면서 내려오기 때문에, 이렇게 90~95점 이런식으로 지정을 안해도 괜찮음. 위에서부터 걸러지기 때문.
점수 = int(input('점수를 입력하세요 :'))

if 점수 >= 95:
    print('A+학점 입니다.')
elif 점수 >= 90:
    print('A학점 입니다.')
elif 점수 >= 85:
    print('B+학점 입니다.')
elif 점수 >= 80:
    print('B학점 입니다.')
else:
    print('재수강 입니다.')

# 이런식으로 코드를 짧게 할 수도 있음. 수업시간에 배운 것은 아님.
점수 = int(input('점수를 입력하세요 :'))
등급 = ['B', 'B+', 'A', 'A+']

if 점수 >= 80:
    print(등급[(점수 - 80) // 5] + '학점 입니다.')  # R이랑 헷갈리면 안됨. 파이썬에서는 //가 몫, %가 나머지. R에서는 %/%가 몫, %%가 나머지
else:
    print('재수강 입니다.')