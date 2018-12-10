#  CHAPTER 10 - HYPOTHESIS AND INFERENCE W/ TWO SAMPLES
rm(list = ls())

### Example 10-1 "Paint Drying"
# H0 mu1 - mu2 = 0
stdv <- 8
n1 <- 10
n2 <- 10
xbar1 <- 121
xbar2 <- 112
alpha <- 0.05
delta0 <- 0      #which is mu1 - mu2

## Step 1:  Calculate the Z value (or our statistic). 
z_value <- (xbar1 - xbar2 - delta0) / sqrt(stdv^2/n1 + stdv^2/n2)

# Calculate the p_value.  In this case, the formula is 1-pnorm(statistic)
p_value <- 1-pnorm(z_value)

## Determined if we reject the null hypothesis.
#  if the p_value is less than alpha then we reject the null hypothesis. 
p_value < alpha

# Practical interpretation:  Based on a normal distribution, there is a statistically significant difference between mu1 and mu2. 






