# Slide 16
rm(list=ls())
dbar<-1.21
n<-14
s.d<-12.68
alpha<-0.1
t.alpha0.5<-qt(alpha/2,n-1,lower.tail = F)
lb<-dbar-t.alpha0.5*s.d/sqrt(n)
lb
ub<-dbar+t.alpha0.5*s.d/sqrt(n)
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

lb0.5<-sqrt(lb)
ub0.5<-sqrt(ub)
lb0.5
ub0.5

# Slide 25
n1<-85
x1<-10
n2<-85
x2<-8
alpha<-0.05
phat1<-x1/n1
phat2<-x2/n2
phat<-(x1+x2)/(n1+n2)
phat1
phat2
phat
z0<-(phat1-phat2)/sqrt(phat*(1-phat)*(1/n1+1/n2))
z0
z.alpha0.5<-qnorm(alpha/2,lower.tail = F)
z.alpha0.5

# Slide 21
b1<-14.94748
se.b1<-1.316758
n<-20
alpha=0.05
lb<-b1-se.b1*qt(alpha/2,n-2,lower.tail = F)
lb
ub<-b1+se.b1*qt(alpha/2,n-2,lower.tail = F)
ub
