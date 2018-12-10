# Hypothesis Testing_______________________________________________________________________________________________


# Example #1:  Known Variance-------------------------------------------------------
rm(list = ls())

# Dataset - From Class Presentation
mu <- 50               # Assumed value that we are testing
x_bar <- 51.3
sigma.2 <- 4
n <- 5
alpha <- .05

# Manually Calculate z0
' xbar - mu / (stdv / sqrt(n))'
z0 <- (x_bar - mu) / (sqrt(sigma.2)/sqrt(n))

# Calculate our Z alpha/2 statistic from the normal distribution. 
'Note:  you can also use abs() to get the abolute value instead of using lower.tail = FALSE'
z.alpha = qnorm(alpha/2, lower.tail = FALSE)

pnorm(z.alpha)

# Test the Null Hypothesis:
'Null Hypothesis h0:  z0 > z.alpha
'
print(z0 > z.alpha)        # returns false.  z0 is < z.alpha, so we fail to reject as it is outside the rejection region. 

# Test Hypothesis
'Note:  That mu is within the lb and ub, so we have proven that failing to reject the null_hypothesis was the correct approach'
L_bound <- round(x_bar - z0/(sqrt(sigma.2)/sqrt(n)),2)
U_bound <- round(x_bar + z0/(sqrt(sigma.2)/sqrt(n)),2)
print(paste(L_bound, mu, U_bound))

# Calculating P value-----------------------------------------------------------------------------------
z <- (x_bar-mu) / (sqrt(sigma.2)/sqrt(n))
p_value <- 2*pnorm(abs(z))
p_value < alpha/2 # A pvalue < alpha and we reject H0. 
p_value


# Calculating Power------------------------------------------------------------------------------------
' Power is the probability of rejecting h0 when h0 is false (so a correct decision)
  Power =     1 - P(h0 | h0 is false)
  function:   pwr.norm.test(d, sig.level, power, n)
  d =         effect size = (mu - mu0)
  sig.level = TypeI error probability, which is our alpha
  power =     1 - TypeII error probability
  n =         number of obeservations
'
# Load Library
rm(list = ls())
library(pwr)    # Import pwr from library

# Calculation
power <- pwr.norm.test(d = 1, sig.level = 0.5, n = 5)
p_typeII_error <- 1-0.9426102

# Calculate n for Power = .95
pwr.norm.test(d = 1, sig.level = 0.5, power = 0.95)


# Unknown Variance____________________________________________________________________________
'Test:         Here we use a t-test from the t-student distribution. 
 Function:     qt(p, df, nc, lower.tail = FALSE)
 df:           degrees of freedom equals num parameters estimated - n.  If just est mu, then df = 1-n.'
rm(list = ls())
mu <- 50               
x_bar <- 51.3
S.2 <- 4
n <- 5
alpha <- .05

z.alpha.05 <- qt(alpha/2, df = n-1, lower.tail = FALSE)
z.alpha.05
lb <- x_bar - z.alpha.05 * (sqrt(S.2) / sqrt(n))
ub <- x_bar + z.alpha.05 * (sqrt(S.2) / sqrt(n))
print(c(lb, x_bar, ub))



# Check Whether Data is Normally Distributed__________________________________________________
'1.) Use QQ-norm plot'
chick_weight <- ChickWeight$weight
qqnorm(chick_weight)
qqline(chick_weight)
'2,) Shapiro Test:  if P_value is > alpha, we accept that the data is normally distributed'
shapiro.test(chick_weight)


# P Values
' Test:               Compare our p.value to alpha.
  To sided Test:      2 * (1 - pnorm(xbar, mean, sd = (sigma.2 / sqrt(n))))
'
rm(list = ls())
a <- 5
s <- 2
n <- 20
xbar <- 7
p.value <- 2 * (1-pnorm(xbar, mean = a, sd = (s/sqrt(20))))





