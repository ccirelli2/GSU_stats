# Slide 12
rm(list=ls())
n1<-11
n2<-13
s1<-10.2
s2<-20.1
xbar1<-103.5
xbar2<-99.7
alpha<-0.01
t0<-(xbar1-xbar2-0)/sqrt(s1^2/n1+s2^2/n2)
nu<-(s1^2/n1+s2^2/n2)^2/((s1^2/n1)^2/(n1-1)+(s2^2/n2)^2/(n2-1))
t0
nu
t.alpha<-qt(alpha,nu,lower.tail = F)
t.alpha

p.value<-pt(t0,nu,lower.tail = F)
p.value

lb<-(xbar1-xbar2)-t.alpha*sqrt(s1^2/n1+s2^2/n2)
lb


# Slide 16
dbar<-1.21
s.d<-12.68
n<-14
alpha<-0.1
lb<-dbar-qt(alpha/2,n-1,lower.tail = F)*s.d/sqrt(n)
ub<-dbar+qt(alpha/2,n-1,lower.tail = F)*s.d/sqrt(n)
lb
ub

# Slide 24
n1<-11
n2<-16
s1<-5.1
s2<-4.7
alpha<-0.1
lb<-s1^2/s2^2*qf(1-alpha/2,n2-1,n1-1,lower.tail = F)
ub<-s1^2/s2^2*qf(alpha/2,n2-1,n1-1,lower.tail = F)
lb
ub
sqrt(lb)
sqrt(ub)


# Slide 27
n1<-85
x1<-10
n2<-85
x2<-8
alpha<-0.05
phat1<-x1/n1
phat2<-x2/n2
phat<-(x1+x2)/(n1+n2)
z0<-(phat1-phat2)/sqrt(phat*(1-phat)*(1/n1+1/n2))
z0
z.alpha0.5<-qnorm(alpha/2,lower.tail = F)
z.alpha0.5

# Confidence Interval for the slope
b1<-14.94748
MSE<-1.180545
S.xx<-0.68088
se.b1<-sqrt(MSE/S.xx)
alpha<-0.05
n<-20
lb<-b1-qt(alpha/2,n-2,lower.tail = F)*se.b1
ub<-b1+qt(alpha/2,n-2,lower.tail = F)*se.b1
lb
ub
