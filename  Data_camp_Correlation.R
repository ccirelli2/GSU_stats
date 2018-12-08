# Data Camp Training Video on Correlation

'''
Correlation Coefficient:  Can range from -1 to 1 with 1 being a perfect correlation. 
                          Indicates the strength of the linear rel. 
                          Sign corresponds to the direction. 
                          Scatter plots with data more spread out has a lower
                          correlation coefficeint. 
                          0 indicates no correlation. Knowing the x value gives you no information as to where
                          y will be. 
  
Pearson product moment
correlation:              Correlation:  Cov(x, y) / sqrt (sxx * syy)
                          Pearson:      sum( (xi - x_bar) * (yi - y_bar) ) /
                                        sum( (xi - x_bar)^2 * sum(yi - y_bar)^2 )
                                        Measures the deviation of both x and y relative to their means. 
                                        Value will always be between -1 and 1 as the denominator is the 
                                        sum of squared deviations and the numerator always smaller and possibly
                                        negative.  
                                        Q:  How would we ever get a value = to 1 when the denominator is ^2?
                                            
Example:                  Note how the correlation coefficeint increases as the sum of errors decreases toward
                          one. 

'''

# Clear Namespace
rm(list = ls())

# Example of Correlation Coefficient
se = c(10,9,8,7,6,5,4,3,2,1)                      # sum of errors
ss2 = se^2                               # sum of errors squared
cc = se / ss2
plot(cc)

# R-code Pearson Product Moment Correlation
''' cor(x,y) is the function used to compute correlation.'''
x <- cars$dist
y <- cars$speed
cor(x,y)
plot(x,y)

# Anscombe Dataset - Classic Correlation Relationships
summary(anscombe)










