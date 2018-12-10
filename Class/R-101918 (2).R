# Slide 48
s2<-0.0153
n<-20
sigma0.2<-0.01
alpha=0.05
chisq0<-(n-1)*s2/sigma0.2
chisq.alpha<-qchisq(alpha,n-1,lower.tail = F)
chisq0  # test statistic
chisq.alpha
lb<-(n-1)*s2/chisq.alpha
lb  # here he calculated the confidence interval.  
p.value<-1-pchisq(chisq0,n-1)
p.value
# What should be the decision?  We accept that our test statistics is not greater than 0.01 .


# Slide 54
qnorm(1/8,5.04,0.08)


# Banana Exampl
getwd()
setwd("C:/Users/rcbtech.GSUAD/Downloads")
W<-read.csv("banana.csv")
summary(W)
qqnorm(x)
qqline(x)
hist(x)
shapiro.test(x)


alpha<-0.05
mu0<-6
n<-length(x)
xbar<-mean(x)
s<-sd(x)
t0<-(xbar-mu0)/(s/sqrt(n))
t.alpha0.5<-qt(alpha/2,n-1,lower.tail = F)
t0
t.alpha0.5

lb<-xbar-t.alpha0.5*s/sqrt(n)
ub<-xbar+t.alpha0.5*s/sqrt(n)
lb
ub
p.value<-2*pt(abs(t0),n-1,lower.tail = F)
p.value

lb.sigma2<-(n-1)*s^2/qchisq(alpha/2,n-1,lower.tail = F)
ub.sigma2<-(n-1)*s^2/qchisq(1-alpha/2,n-1,lower.tail = F)
lb.sigma2
ub.sigma2


#Lecture 9
# Slide 6
rm(list=ls())
xbar1<-87.6
n1<-10
sigma1<-1

xbar2<-74.5
n2<-12
sigma2<-1.5

Delta0<-0

alpha<-0.1
z.alpha0.5<-qnorm(alpha/2,lower.tail = F)
lb<-xbar1-xbar2-z.alpha0.5*sqrt(sigma1^2/n1+sigma2^2/n2)
ub<-xbar1-xbar2+z.alpha0.5*sqrt(sigma1^2/n1+sigma2^2/n2)
lb
ub

# Slide 9
rm(list=ls())
n1<-10
xbar1<-90
s1<-5

n2<-15
xbar2<-87
s2<-4

sp2<-((n1-1)*s1^2+(n2-1)*s2^2)/(n1+n2-2)
sp<-sqrt(sp2)

alpha=0.05
t.alpha0.5<-qt(alpha/2,n1+n2-2,lower.tail = F)
lb<-xbar1-xbar2-t.alpha0.5*sp*sqrt(1/n1+1/n2)
ub<-xbar1-xbar2+t.alpha0.5*sp*sqrt(1/n1+1/n2)
lb
ub
.