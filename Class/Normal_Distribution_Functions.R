## DNORM
'''
Definition:  The function dnorm returns the value of the probability density function for the normal distribution. 
Inputs:      x, mu, stdv
'''
rm(list = ls())

# Ex:
test_1 = dnorm(0, mean = 0, sd = 1)

# Ex: P(X<27.4) where mu = 50 and sd = 20
test_2 = dnorm(27.4, mean = 50, sd = 1)
test_2

#PNORM
CDF:         pnorm calculates the CDF of the normal distribution.   So if you wanted to know P(X<27.4) where mu = 50 and sd = 20