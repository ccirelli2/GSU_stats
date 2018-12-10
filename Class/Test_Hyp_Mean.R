# Burn Rate of a Propellant
# H0 mu = 50, H1 mu != 50.  Rejection area Z0 > Z alpha/2.  Two sided, so you use alpha/2. 

# Variables
mu <- 50
Xbar <- 51.3
stdv <- 2
n <- 25
alpha <- .05

# Calculate Z0
Z0 <- (Xbar - mu) / stdv/sqrt(2)

# Calculate Z_value
Z_value = abs(qnorm(alpha/2))
Z_value


# Test Hypothesis
L_bound <- round(Xbar - Z_value/(stdv/sqrt(n)),2)
U_bound <- round(Xbar + Z_value/(stdv/sqrt(n)),2)
print(paste(L_bound, mu, U_bound))


# Calculating P value
z <- (Xbar-mu) / (stdv/sqrt(n))
p_value <- 2*pnorm(-abs(z))
p_value < alpha/2 # A pvalue < alpha and we reject H0. 


?pchisq



