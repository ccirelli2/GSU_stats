# Example 2 from Presentation
# We found that 0.5 was our mu, so we are using the sqrt function to calculate the sqrt. 
# 160.5 is our X, 160 is the mu, lower.tail = False, means that we are looking for a value less than or equal to 160. 
pnorm(160.5, 160, sqrt(0.5), lower.tail = FALSE)



## HW4 - Question 5
# fill volume of cans normally distributed w/ mean of 12.4 ounces and stdv of 0.1. 

#a.) What is the probability that the fill is less than 12.1 ounces?  We should use pnorm (X<=)
pnorm(12.1, 12.4, 0.1)

#b.) If all cans less than 12.1 or greater than 12.6 are scrapped, what percentage of cans are scrapped?
Less_12.1 <- pnorm(12.1, 12.4, 0.1)
greater_12.6 <- pnorm(12.6, 12.4, 0.1, lower.tail = FALSE)
solution <- Less_12.1 + greater_12.6
print(solution)


## Problem 7 - Exponential Distribution
# Time between calls with mean of 15 minutes. 
#a.) What is the probability that there are no calls within the next 30 minutes?
pexp(30, 1/15)
#b.) What is the probability that the calls falls between 5 and 10 minutes?
solution <- c(pexp(10, 1/15) - pexp(5, 1/15))
print(solution)


### Practice Problems 4

## Problem 4 - Printer produces error patters 1,000 pages. Poisson ditribution mean of 0.4 pages. 
# a.) What is the mean number of pages w/ errors

1 - dpois(0, 0.4)


## Problem 5 - Exponential distribution - time computer to fail (in hours), theta = 0.0003
# a.) What propotion of computers will last at least (equal to greater than) 10,000 hours?
pexp(10000, 0.0003, lower.tail =FALSE)

# What percentage of computers will last at most 7000?
pexp(7000, 0.0003)


### Quiz 2

# CAPM returns are normally distributed.  Average rate of return of 14.7%, w/ Stdv of 33%. 

# a.) What percentage of the years does this portfolio produce negative returns i.e. less than 0%?
pnorm(0, .147, .33)

#   





