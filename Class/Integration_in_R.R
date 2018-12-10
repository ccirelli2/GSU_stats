# INTEGRATION IN R


# integrate(f, lower, upper), where f is the function, lower = lower bound, upper = upper bound. 
integrate(dnorm, -1.96, 1.96)

# Define f
integrand <- function(x) {1/(x+1)}
integrate(integrand, lower = 0, upper = 1.96)


# Differentiation (Use Function D)

test_function <- expression(x^2 + 3*x)
D(test_function, 'x')  # Differentiate relative to x. 
