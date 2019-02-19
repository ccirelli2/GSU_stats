### CHAPTER 7:  BOOTSTRAP 

# Load Modules
'Note:  When Leading ISLR the indv dataset names are loaded into the namespace'
library(boot)
library(ISLR)

# Generate a variance for Auto data
set.seed(1)                             #See should be set for the random generator
auto_var = boot(Auto$mpg, var, R = 1000)

# Plot Density of Variance
plot(auto_var, main = '', ylab = 'density', col = 'gray90')

# Confidence Intervales
summary(auto_var)
