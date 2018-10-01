# HOMEWORK 5

# Clear name space
rm(list = ls())

# Problem 1 - Consider the joint probability mass function fXY(x,y) = c(x+y) where
#             x = 1,2,3 and y = 1,2,3

X <- c(1,2,3)
Y <- c(1,2,3)
C = c((1+1),(1+2),(1+3),(2+1),(2+2),(2+3),(3+1), (3+2), (3+3))
sum(C)
# if C * 36 = 1, then C = 1/36. Applying that to each joint probability

x <- c(1,1,1,2,2,2,3,3,3)
y <- c(1,2,3,1,2,3,1,2,3)
fXY = c(((1+1)*(1/36)), ((1+2)*(1/36)), ((1+3)*(1/36)), ((2+1)*(1/36)), 
        ((2+2)*(1/36)), ((2+3)*(1/36)), ((3+1)*(1/36)), ((3+2)*(1/36)), 
        ((3+3)*(1/36)))
sum_fXY = sum(fXY)     # equal 1

# a.) c
sum(fXY)

# b.) P(X = 1 & Y < 4)
sum(fXY[x < 2 & y<4])

# c.) P(X = 1)
sum(fXY[x<2])

# d.) F(Y = 2)
sum(fXY[y==2])

# e.) P(X <_ 2, Y<_ 2)
sum(fXY[x<2|x==2 & y<2|y==2])

#f. E(X):  Expected value of X
#          sum P(X=x) for each value of x in the range of x. 
x_1 = fXY[x==1]
x_2 = fXY[x==2]
x_3 = fXY[x==3]
E_x = sum(c((x_1*1) + (x_2*2) + (x_3*3)))
E_x

# g.) E(Y)

y_1 = fXY[y==1]
y_2 = fXY[y==2]
y_3 = fXY[y==3]
E_y = sum(c((y_1*1) + (y_2*2) + (y_3*3)))
E_y







