# HOMEWORK 5

# Clear name space
rm(list = ls())

# Problem 1 - Consider the joint probability mass function fXY(x,y) = c(x+y) where
#             x = 1,2,3 and y = 1,2,3

X <- c(1,2,3)
Y <- c(1,2,3)
C <- c((1+1),(1+2),(1+3),(2+1),(2+2),(2+3),(3+1), (3+2), (3+3))
sum(C)
# if C * 36 = 1, then C = 1/36. Applying that to each joint probability

x <- c(1,1,1,2,2,2,3,3,3)
y <- c(1,2,3,1,2,3,1,2,3)
fXY <- c(  ((1+1)*(1/36)), 
          ((1+2)*(1/36)), 
          ((1+3)*(1/36)), 
          ((2+1)*(1/36)), 
          ((2+2)*(1/36)), 
          ((2+3)*(1/36)), 
          ((3+1)*(1/36)), 
          ((3+2)*(1/36)), 
          ((3+3)*(1/36))
          )
sum_fXY <- sum(fXY)     # equal 1

# a.) c  ----------------------------------------------------
sum(fXY)

# b.) P(X = 1 & Y < 4) --------------------------------------
sum(fXY[x < 2 & y<4])

# c.) P(X = 1)------------------------------------------------
sum(fXY[x<2])

# d.) F(Y = 2)------------------------------------------------
sum(fXY[y==2])

# e.) P(X <_ 2, Y<_ 2)----------------------------------------
sum(fXY[x<2|x==2 & y<2|y==2])

#f. E(X):  Expected value of X--------------------------------
#          sum P(X=xi)*xi for each value of x in the range of x. 
x_1 <- sum(fXY[x==1])
x_2 <- sum(fXY[x==2])
x_3 <- sum(fXY[x==3])
E_x <- sum(c((x_1*1) + (x_2*2) + (x_3*3)))
E_x


# g.) E(Y)----------------------------------------------------
y_1 <- sum(fXY[y==1])
y_2 <- sum(fXY[y==2])
y_3 <- sum(fXY[y==3])
E_y <- sum(c((y_1*1) + (y_2*2) + (y_3*3)))
E_y


# h.) Var(X)--------------------------------------------------
#     sum (x-mu of x)^2
Var_x <- c((1 - E_x)^2 + (2 - E_x)^2 + (3 - E_x)^2)
Var_x

# i.) Var(Y)--------------------------------------------------
Var_y <- c((1- E_y)^2 + (2 - E_y)^2 + (2 - E_y)^2)
Var_y

# j.) Marginal Probability Distribution x ---------------------
sum_x_1 <- sum(x_1)
sum_x_2 <- sum(x_2)
sum_x_3 <- sum(x_3)

# k.) Conditional Probability Distribution y given X = 1--------

# P(y=1 & x=1)
p_x1 <- sum(fXY[x ==1])

p_y1_x1 <- fXY[y==1 & x==1]
p_y2_x1 <- fXY[y==2 & x==1]
p_y3_x1 <- fXY[y==3 & x==1]  

p_y1_x1 / p_x1
p_y2_x1 / p_x1
p_y3_x1 / p_x1  


# l.) Conditional Probability Distribution of X given Y = 2--------------

# P(y=2 & x=1)
p_y2_x1 <- fXY[y==2 & x==1]
p_y2_x1
# P(y=2 | x=1)
p_y2_x1 / sum_x_1

# P(y=3 & x=1)
p_y3_x1 <- fXY[y==3 & x==1]
# P(y=3 | x=1)
p_y3_x1
p_y3_x1 / sum_x_1

# l.) P(x | y=2)
p_x2 <- sum(fXY[x==2])
p_x2

p_x1_y2 <- fXY[x==1 & y==2]
p_x2_y2 <- fXY[x==2 & y==2]
p_x3_y2 <- fXY[x==2 & y==2]

p_x1_y2 / p_x2
p_x2_y2 / p_x2
p_x3_y2 / p_x2

# m.) E(Y|X = 1) Expected Value of Y given x = 1---------------------------
#     For each value of y you multiply it by the conditionanal prob
#     of x = 1. 

cp_y1_x1 <- p_y1_x1 / p_x1
cp_y2_x1 <- p_y2_x1 / p_x1
cp_y3_x1 <- p_y3_x1 / p_x1 

E_y_x1 <- sum(c(1*cp_y1_x1)+(2*cp_y2_x1)+(3*cp_y3_x1))
E_y_x1 # expected value of y given x = 1


# n.) Are X and Y independent. ---------------------------------------------

# Answer:   No as their exist variations between /'[]
#           the Conditional and Joint Probabilities for x & y. 

# o.) Covariance (x,y)
#     mu(x) = 2.167, mu(y) = 2.167
p_x1_y1 <- sum(fXY[x == 1 & y == 1])
p_x2_y2 <- sum(fXY[x == 2 & y == 2])
p_x3_y3 <- sum(fXY[x == 3 & y == 3])
cov_xy <- sum( 
              c( ((1 - E_x) * (1 - E_y) * (p_x1_y1)),
                 ((2 - E_x) * (1 - E_y) * (p_x2_y2)), 
                 ((3 - E_x) * (1 - E_y) * (p_x3_y3))
              )
              )
cov_xy

# p.) Correlation (x,y)
#     Covariance / sqrt(VAR(X)*VAR(Y))

p_xy <- cov_xy / sqrt(sum(Var_x*Var_y))
p_xy










