#1. Write R code for making the same array as shown below.  
#2. From the arr you produced in Question 4, extract the numbers (40,41,42). 
#3. From the arr you produced in Question 4, extract the numbers (17, 20, 23, 26, 29). 
#4. From the arr you produced in Question 4, extract the two vectors (10, 11, 12) and (25, 26, 27) by one line of code. 
#5. From the arr you produced in Question 4, extract the following submatrix.
#6. Make a list object in R which shows the following output. (There can be more than one correct answer.)
#7. Make a list object in R which shows the following output. Note that there are variable names. (Hint: The data_list$Misc is another list object. That is a list within list.)
#8. Make an object of data frame as shown below. 

arr=array(1:45,c(3,5,3)) # array()는 byrow=T같은 옵션이 없어서, 열부터 채워짐. 행으로 채우려면 matrix()를 활용해야함
arr

arr[,4,3]

arr[2,,2]

arr[,4,c(1,2)] # 이렇게 하면 3행 2열로 열끼리 붙어서 출력됨. cbind(arr[,4,1],arr[,4,2])와 동일한 형태
c(arr[,4,1],arr[,4,2]) # 이렇게 하면 한 줄로 출력 가능

arr[,2:4,2] # 2:4에서 :가 이미 숫자 벡터를 만들어주는 표현이라, c(1:4)이런식으로 안 나타내도 됨.

out_list=list(1:3,c("Hadoop","Spark","Flink","Mahout"),c(T,F,T,F))
out_list

data_list=list("Month"=c("Jan","Feb","Mar"),"Matrix"=matrix(c(1,2,3,4,-1,9),2,3),"Misc"=list("Red",12.3)) # 여기서 이름은 ""를 안붙혀도 됨. 그냥 Month라고 써도 됨.
data_list

emp.data=data.frame(emp_id=1:5,emp_name=c('Rick','Dan','Michelle','Ryan','Gary'),salary=c(623,515,611,729,843)) #data.frame()임. '.'이 있어야함
emp.data