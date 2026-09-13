#1-A 과제
#Install R first.  
#Then, conduct the following steps.  
#1. Make a vector of x which contains integer values from -5 to 5.  
#2. Set y to be equal to the negative of squared x.  
#3. Draw a plot showing the relationship between x and y. 
#4. Save the plot in a pdf file.  
#5. Save your R code in R script. Then close R. 
#(Check the folder where your R script is saved.) 
#Now, make a vector of z containing integer values from 1 to 10.  
#Choose even numbers and save them as an object named num.even. 

x=c(-5:5)
y=-x^2
y
plot(x,y)

#-------------------------

z=c(1:10)
num.even <- z[z%%2 == 0]   #z%%2는 z를 2로 나눈 나머지라는 의미. 즉 나머지가 0이 되는 애들은 짝수니까 걔네만 추출
num.even
