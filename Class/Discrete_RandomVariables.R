# DISCRETE RANDOM VARIABLES


### Binomial Distribution 
## Q1 - 20% of people in the population have bload type A.  In a random sample of 20 people, find the population

#a.) exactly 4 have type A
dbinom(4, 20, 0.2)   # dbinom gives the density.  Here we are looking for X = 4. 
                     # 4 number of successes, 20 total sample, 0.2 is the probability of success. 

#b.) at least 1 has type A blood P(E> or = 1); need to use total probability rule. 
1 - pbinom(0,20,0.2) # pbinom gives the distribution function., which you would use for > < operators. P(X>1) = 1-P(X=0)

#c.) Calculate combinations
choose(20,4)    # 20 chose 4


### Geometric Distribution
dgeom(5,0.2)    # P(X = 5) w/ probability 0.2. 
pgeom(5,0.2)    # P(X = < 5) w/ probability 0.2

### Negative Binomial 
dnbinom(x, size, prob, mu, log = FALSE)
pnbinom(q, size, prob, mu, lower.tail = TRUE, log.p = FALSE)

### Hypergeometric
dhyper(x, m, n, k, log = FALSE)
phyper(q, m, n, k, lower.tail = TRUE, log.p = FALSE)


### Poisson Distribution
# Example:    12 cars crossing the road per minute, 
#a.) find the probability of having 16 or less cars cross the road  in a minute.   
ppois(16, lambda = 12, lower.tail = TRUE)    # note lowertail is the default. 
#b.) find the probability of having 17 or more
ppois(16, lambda = 12, lower.tail = FALSE)


?pnbinom








