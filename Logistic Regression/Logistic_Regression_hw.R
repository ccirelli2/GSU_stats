# Logistic Regression - Problems From Homework_______________________________________________

# Import Dataset---------------------------------------
rm(list = ls())
library(ISLR)

# Generate Logistic Regression Models-----------------
attach(Default)        # Add Default to the namespace. 

# m1:  All Independent Variables
glm1 <- glm(default ~ Default$student + Default$balance + Default$income, family = binomial)
summary(glm1)

# m2:  Using only balance
glm2 <- glm(default ~ balance, family = binomial)
summary(glm2)$ coefficients

# What is the predicted probability of default w/ a balance of $1,000?
'restrict dataframe to a single value (seems weird as it just returns 1000)'
x0 <- data.frame("balance" = 1000)
'use the predict function to predict this new data'
p.x0 <- predict.glm(glm2, newdata = x0, type = 'response')
print(p.x0)
'manually calculate:  p.x0 = 1 / (1 + e ^ - b0 + b1 * x)'


