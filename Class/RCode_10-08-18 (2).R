# Slide 18
# H0: mu=50
# H1: mu!=50
sigma<-2
alpha<-0.05
n<-25
xbar<-51.3
mu0<-50
z0<-(xbar-mu0)/(sigma/sqrt(n))
z.alpha0.5<-qnorm(alpha/2,lower.tail = F)
print(z0)
print(z.alpha0.5)

lb<-xbar-z.alpha0.5*sigma/sqrt(n)
ub<-xbar+z.alpha0.5*sigma/sqrt(n)
print(paste("[",lb,",",ub,"]",sep=""))


p.value<-2*(1-pnorm(abs(z0)))
print(p.value)



# Slide 21
# H0: mu=75
# H1: mu>75
sigma<-8
alpha<-0.05
n<-25
xbar<-79.25
mu0<-75
z0<-(xbar-mu0)/(sigma/sqrt(n))
z.alpha<-qnorm(alpha,lower.tail = F)
print(z0)
print(z.alpha)


lb<-xbar-z.alpha*sigma/sqrt(n)
print(paste("[",lb,",+ infty)",sep=""))
p.value<-1-pnorm(z0)
print(p.value)

# H0: mu=75
# H1: mu<75

print(z0)
print(-z.alpha)
ub<-xbar+z.alpha*sigma/sqrt(n)
print(paste("(- infty,",ub,"]",sep=""))

p.value<-pnorm(z0)
print(p.value)
  

# Slide 41
# H0: mu=30
# H1: mu!=30
s2<-12.28
s<-sqrt(s2)
alpha<-0.05
n<-25
xbar<-26.42
mu0<-30
t0<-(xbar-mu0)/(s/sqrt(n))
t.alpha0.5<-qt(alpha/2,n-1,lower.tail = F)
print(t0)
print(t.alpha0.5)

lb<-xbar-t.alpha0.5*s/sqrt(n)
ub<-xbar+t.alpha0.5*s/sqrt(n)
print(paste("[",lb,",",ub,"]",sep=""))


p.value<-2*(1-pt(abs(t0),n-1))
print(p.value)


