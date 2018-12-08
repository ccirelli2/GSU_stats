### LINEAR REGRESSION - PRACTICE__________________________________________________________________________
'''Example from class presentation
'''
# Clear Namespace--------------------------------------------------------------------
rm(list=ls())

# Import Dataset --------------------------------------------------------------------
setwd('/home/ccirelli2/Desktop/GSU/2018_Fall_Semester/Statistics/Linear_Regression')
Oxygen <- read.csv('Lin_Reg.csv')

# Inspect Dataset--------------------------------------------------------------------
show(Oxygen)
plot(Oxygen)

# Define Objects--------------------------------------------------------------------
x <- Oxygen$HC_Level
y <- Oxygen$Purity
n <- length(x)

# Inspect Varaibles-----------------------------------------------------------------
sum(x)
sum(y)
sum(x*y)
sum(x*x)

# Calculate Mean Squared Error 
S.xy <- sum(x*y) - sum(x)*sum(y)/n
S.xx <- sum(x*x) - sum(x)*sum(x)/n

b1   <- S.xy / S.xx                  # Slope
b0   <- mean(y) - b1 * mean(x)

Resid <- y-b0-b1*x
SSE  <- sum(Resid*Resid)
MSE  <- SSE / (n-2)                  # -2 because we are estimating two parameters. 

# Variance 
se.b1 <- sqrt(MSE/S.xx)               
se.b0 <- sqrt(MSE * (1/n + mean(x)^2/S.xx) )

# Calculate Confidence Interval-----------------------------------------------------

# Lower Bound
'''qt (p, df, ncp, lower.tail = True, log.p = False)
   Will return the value for the 95th percentile of the distribution'''
alpha <- 0.05
lb <- b1 - qt(alpha/2, n-2, lower.tail = F) * se.b1

# Upper Bound
ub <- b1 + qt(alpha/2, n-2, lower.tail = F) * se.b1

# Solution:
'''
95% CI for b1 is [12.18, 17.71].  
Note that our b1 value is 14.94, which is between these two values. 

Purpose:    The purpose of the confidence interval is to demonstrate that
            you have a certain level of confidence that the value you calculated
            is the actual value, in this case the slope.  If someone says they
            think the slope is zero, we can be 95% confident that is not correct
            as it is not between the two calculated numbers
b0          You can calculate the same confidence interval for b0. 

'''

# P Value & Hypothesis Testing ---------------------------------------------------
mod1 = lm(formula = y ~ x, data = Oxygen)
summary(mod1)
'''
Hypothesis for b0 & b1:
H0: b1  = 0         H0: b0  = 0
H1: b1 != 0         H1: b0 != 0

Use p_values:
- Here we reject the null hypothesis H0 as our p_value is less than alpha. 
'''


















