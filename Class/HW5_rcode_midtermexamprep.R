rm(list = ls())

### PRACTICE PROBLEM 1

x<- c(1,1.5, 1.5, 2.5, 3)
y<- c(1,2,3,4,5)
f_XY <- c(1/4, 1/8, 1/4, 1/4, 1/8)

#a.) Prove that fXY fits joint prob requirements. 
sum(fXY)

#b.) P(X < 2.5, Y < 3)
sum(f_XY[x<2.5 & y<3])
#c.) P(X<2.5)
sum(f_XY[x<2.5])
#d.) P(Y<3)
sum(f_XY[y<3])
#e.) P(X>1.8, Y > 4.7)
sum(f_XY[x>1.8 & y>4.7])

#f.) marginal probability distribution of the random variable X
# can't do in R.  
# Marginal probability that X takes on a give value is as follows (assume x = 3)
# P(X=x & y=0) + P(X=x & y=1) + P(X=x & y=2), etc.  it is the probability 
# that x takes on a specific value somed for each value of y. 

#g.) The conditional probability of Y given that X = 1.5. 
# again they are asking for the pdf. so its f_XY(x = 1.5, y = 2) / fx(1.5)
# f_XY(1.5, 3) / fx(1.5). just calculate the conditional probabilities
# for each value of y given x = 1.5 divided by P(x =1.5)

#i) E(Y|X = 1.5) expected value of Y given x = 1.5. 
#   should be each value of Y * p(x = 1.5)
px_1.5 = .35
fxy_x_1.5 = sum(2*px_1.5 + 3*px_1.5)
print(fxy_x_1.5)

#j.) Are X and Y independent?
#    Looking to see if P(X|Y) = P(X)

#k.) Cov(X,Y)

# Step1:  compute muX and muY.  For each value of X you multiply it by P(X=x & Y=y). 
#         Cov is the sum of each value of x-mu_X * each value of y - mu_Y * each value in f_XY

mu_x = sum(x * f_XY)
mu_y = sum(y * f_XY)
CoVar_xy = sum((x-mu_x) * (y-mu_y) * f_XY)

# Variance of X & Y
sigma_X <- sqrt(sum((x-mu_x)^2*f_XY))
sigma_Y <- sqrt(sum(y-mu_y)^2*f_XY)

# Correlation = Covariance / Variance_x & Variance_y
Correlation = sum(CoVar_xy / (sigma_X * sigma_Y))
print(Correlation)


### HOWEWORK_5.

# Problem 1
x<- c(rep(1,3), rep(2,3), rep(3,3))
y<- rep(c(1:3),3)
f_XY <- x+y
c<- 1/sum(f_XY)
f_XY <- c*f_XY

#b.) P(x = 1, Y<4) 
sum(f_XY[x==1 & y<4])

#c.)  P(X=1)
sum(f_XY[x==1])

# d.) P(y = 2) 
sum(f_XY)

## Problem 2
# Manufacturer has two inspection divices. 
# First accurately detect 99.3% of defective items
# Second 99.7%
# Assume that four defective items are producted. 
# X = number of items that will be identified as defective by device 1
# Y = number of items that will be identified as defective by device 2

#a.) Find f_XY(x,y)
x<- rep(0,25)
choose(7,4)



