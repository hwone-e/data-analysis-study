#Type the following commands to get the auction data set from online.  
#> website=”https://gksmyth.github.io/ozdasl/general/auction.txt” 
#> data.prac = read.table(website,header=T)# data set is stored 
#> attach(data.prac) # Now, we can use the variable names. 
#The first variable shows the age of the items in an auction. 
#1. Which items are more than 120 years old but less than 150 years old? 
#(Answer using the variable Age.) 
#2. Which items are less then 1000 dollars or more than 2000 dollars? (Answer 
#using the variable Price.) 
#3. Save this data set as an RData file, “Auction.RData”. 
#4. Using write.table command, save this data set as a text file, “Auction1.txt”.   
#5. Using write.table command, save this data set as a text file, “Auction2.txt”, 
#where the separation between the variables is done by comma.  
#6. Using write.matrix command, save this data set as a text file, 
#“Auction3.txt”.  First, you will need to install MASS package to do this work.  
#7. Using write.csv command, save this data set as “Auction4.csv”.  

website="https://gksmyth.github.io/ozdasl/general/auction.txt"
data.prac = read.table(website,header=T)
attach(data.prac) # 이건 데이터 내부의 변수(Age, Price..등을 그냥 바로 쓸 수 있도록 해주는거임. 1,2번에서 그냥 바로 Age를 변수처럼 쓸 수 있어지는 것.
# 만약 attach를 안하면 data.prac$Age 이런식으로 각 열의 데이터를 써야함

v1=which((120<Age)&(150>Age))
v2=which((1000>Price)|(2000<Price))
save(data.prac,file="C:/Users/nnk90/OneDrive/문서/GitHub/data-analysis-study/R/Auction.RData")
write.table(data.prac,file="C:/Users/nnk90/OneDrive/문서/GitHub/data-analysis-study/R/Auction1.txt")
write.table(data.prac,file="C:/Users/nnk90/OneDrive/문서/GitHub/data-analysis-study/R/Auction2.txt",sep=",")

install.packages("MASS") #패키지 설치
library(MASS) # MASS 라이브러리 임포트

write.matrix(data.prac,file="C:/Users/nnk90/OneDrive/문서/GitHub/data-analysis-study/R/Auction3.txt")
write.csv(data.prac,file="C:/Users/nnk90/OneDrive/문서/GitHub/data-analysis-study/R/Auction4.csv")
