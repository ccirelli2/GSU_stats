# Calculate Maximum Likelihood Estimate (MLE)

# Evaluate Likelihood for Guess 1
# John guess it was 90.  

x_1 <- dnorm(96, 90, 5) #96 = observation/sample 1, 90 is John's guess, 5 is var
x_2 <- dnorm(101, 90, 5)
x_3 <- dnorm(103, 90, 5)

# L(90) you multiple each of the values
result = c(x_1*x_2*x_3)
result

# You can use the same approach to test Mary's guess. 
x_1 <- dnorm(96, 100, 5)
x_2 <- dnorm(101, 100, 5)
x_3 <- dnorm(103, 90, 5)
result = c(x_1*x_2*x_3)
result