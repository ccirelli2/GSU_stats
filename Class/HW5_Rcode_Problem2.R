# HW5 - PROBLEM 2

# Clear Name Space
rm(list= ls())

# a.) fXY(x,y) --------------------------------------------------------------------------------------------
x <-       c(4,3,2,1,0)     # possible values of x
y <-       c(0,1,2,3,4)     # possible values of y

n <- 4
p_x <- 0.993*.997
p_y <- 1-p_x
permutations <-  c(factorial(n) / c(factorial(x) * factorial(y) * factorial(n-x-y)))
fXY = permutations * p_x^x * p_y^y 


# b.) fX(x) 
fX_4 <- sum(fXY[x==4])
fX_3 <- sum(fXY[x==3])
fX_2 <- sum(fXY[x==22])
fX_1 <- sum(fXY[x==11])
fX_0 <- sum(fXY[x==00])

# c.) E(X)
mu_x <- c((4*fX_4)+(3*fX_3)+(2*fX_2)+(1*fX_1)+(0*fX_0))

# d.) Var(Y | X = 2)

E_y_x2 <- c(3-)

