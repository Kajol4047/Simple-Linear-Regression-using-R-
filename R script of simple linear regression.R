#27February2025

setwd("E:/Stat 3~2/3201 Regression Analysis/books/dataset of the book of A Modern approach/Data")

#problem-1
playbill <- read.csv("playbill.csv",header=TRUE)
attach(playbill)

#Figure 2.6 on page 38
par(mfrow=c(1,1))
plot(LastWeek,CurrentWeek,xlab="Gross box office results previous week",
     ylab="Gross box office results current week")
m1=lm(CurrentWeek~LastWeek) #setting model
summary(m1)

#solution of a
confint(m1,level=0.95)
#comment:1 is a plausible value for b1 since it falls within the confidence interval.

#solution of b
#testing Ho: Beta0=10000 against Beta0 != 10000
T=(6.805*10^3 -10000)/(9.929*10^3)
T
tval=qt(1-0.05/2,16) #calculate the critical value
tval
#since the T is less than tval , the test is insignificant and we can predict that there is not enough evidence to reject Ho.

#solution of c
predict(m1,newdata=data.frame(LastWeek =c(400000)),interval="prediction",level=0.95)
#since the prediction interval for a production with $400,000 in gross box office the previous week is 35982.8 to 439442.2 hence  $450,000 is not a feasible value for the gross box office results in the current week.

#solution of d
#*If b1 = 1, then for every $1 increase in the previous week's gross box office, the current week's gross box office will also increase by $1 (i.e., they are equal).
#*If b0 = 0, then if the previous week's gross box office is $0, the current week's gross box office will also be $0.
#our result: 
#*we found that b1 = 1 is a plausible value (the confidence interval includes 1).
#*However, the intercept (b0) is significantly different from 0 (the confidence interval does not include 0, and the t-test failed to reject the null hypothesis that Beta0 = 10000, which is very different from 0)
#comment:
#Approximation: The rule is a reasonable approximation because the slope (b1) is plausibly 1. This means that, on average, the current week's gross box office is close to the previous week's gross box office.
#Oversimplification: However, the rule is an oversimplification. The intercept (b0) is not 0, which means there's a baseline level of revenue even if the previous week's revenue is low. The regression model provides a more accurate prediction by accounting for this intercept.
# my decission: the prediction rule is a reasonable approximation but an oversimplification, and that the regression model provides more accurate predictions.If a quick, rough estimate is sufficient, the rule might be acceptable.

detach(playbill)

#solution of the problem-2

invoice <- read.table("invoices.txt",header=TRUE)
attach(invoice)
par(mfrow=c(1,1))
plot(Invoices,Time,xlab="Number of Invoices",ylab="Processing Time")
abline(lsfit(Invoices,Time))
m2 <- lm(Time~Invoices)
summary(m2)
mean(Time)
median(Time)
mean(Invoices)
median(Invoices)

#solution of a
confint(m2,level=0.95)

#solution of b
#testing Hypothesese; Ho: Beta1=0.01 against H1: Beta1 != 0.01
T=(0.0112916-0.01)/0.0008184 #calculated value of t statistic
T
tval=qt(1-0.05/2,28)   #critical value at 0.05 level of significance
tval
#since the calculated value is less than critical value of t statistic , there is not enough evidence to reject the null hypothesis indicate that the test is insignificant. 

#solution of c
predict(m2,newdata=data.frame(Invoices=c(130)),interval = "prediction",level = 0.95)
#the model estimated that to process 130 invoices it takes 2.109624 hours and 95% prediction interval to process 130 invoice is 1.422947 hours to 2.7963 hours.
detach(invoice)


