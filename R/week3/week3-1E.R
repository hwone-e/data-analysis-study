rep(c(1,4,9),each=3,time=2)

prod(seq(1,21,2))

SAT=read.table("SAT.txt",header=T) # read.table()로 읽어오기!!!!!!!!!
SAT
head(SAT)
is.na(SAT)
length(is.na(SAT)==TRUE) # 이게아니야... length는 전체 원소 갯수를 세
as.numeric(is.na(SAT)) # as.numeric()을 하면 TRUE는 1 FALSE는 0으로 바뀜
sum(as.numeric(is.na(SAT)))
# 근데 더 간단히 하면
sum(is.na(SAT)) # R에서는 바꿔주지 않아도 TRUE=1, FALSE=0으로 계산함


Diff=SAT$verbal-SAT$math 
Diff
SAT$difference=Diff
head(SAT,3)

paste("We have",seq(35,49,2),"students")