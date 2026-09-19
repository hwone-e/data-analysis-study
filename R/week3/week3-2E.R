# 1. Solve the following equations by matrix calculation.  
# 3x+2y+z=15, 2x+7y-z=7, x-y+2z=9 
# 2. Using the SAT data set (download it from the blackboard and name it as 
# SAT), fit the linear regression line considering math score as a response 
# variable and gpa as an explanatory variable. What are the values of the 
# estimated y-intercept and estimated slope?  
# 3. Repeat question 2 considering verbal score as a response variable and gpa 
# as an explanatory variable. 

matr1=matrix(c(3,2,1,2,7,-1,1,-1,2),byrow=T,nrow=3)
matr1
solve(matr1,c(15,7,9))

SAT=read.table("SAT.txt",header=T)
head(SAT)
lm1=lm(math~gpa,data=SAT)
lm1$coef
summary(lm1)
plot(lm1)

lm2=lm(verbal~gpa,data=SAT)
lm2$coef
summary(lm2)
plot(lm2)