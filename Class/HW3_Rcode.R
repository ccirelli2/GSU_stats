# HW3

## Problem 3
# Assume successive independent Bournolli trials.  

# a.) How many trials until the first success? p = 0.2 and n = 1
# geometric distribution.  Question is asking for E(X) 
x = c(1/0.2)
print(x)

# b.) After 8 successes, what is the expected number of trials to get the 9th?
# exactly the same number.  Lack of memory. 
pnbinom(4, 2, 0.1, lower.tail = FALSE)


## Problem 5 - A company employs 800 men. 30% carry marker on chromosome. 
#              If 10 men are tested, what is the probability that exactly 1 has the marker. 
dbinom(1, 10, 0.3)


## Problem - 6:  Poisson distribution, mean = 0.05, per square foot, total 10sqft surface. 

# a.) What is the probability that there are no surface flaws on the sheet?
dpois(0,lambda = 0.05)
