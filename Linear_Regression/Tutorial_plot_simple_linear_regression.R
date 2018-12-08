### Source: https://www.theanalysisfactor.com/linear-models-r-plotting-regression-lines/
### Source Vizualize Results:  https://www.theanalysisfactor.com/linear-models-r-diagnosing-regression-model/
### Source Residuals vs Fitted: https://onlinecourses.science.psu.edu/stat501/node/277/
### Source Anatomy Normal Plot: https://www.theanalysisfactor.com/anatomy-of-a-normal-probability-plot/


## X and Y Variables
height <- c(176, 154, 138, 196, 132, 176, 181, 169, 150, 175)
bodymass <- c(82, 49, 53, 112, 47, 69, 77, 71, 62, 78)

## Generate Simple Scatter Plot
plot(height, bodymass)
title('Height vs Bodymass')

## Generate Regression Statistics
lm_result <- lm(height ~ bodymass)

## Generate Summary
summary(lm_result)

## Enhance Plot
plot(bodymass, height, pch = 16, cex = 1.3, col = "blue", 
     main = "HEIGHT PLOTTED AGAINST BODY MASS", 
     xlab = "BODY MASS (kg)", ylab = "HEIGHT (cm)")
# pch:  Create solid dots. 
# cex:  creates does that are 1.3 times bigger than the default. 
# xlab: X legend
# ylab: Y legend. 

## Add Regression Line
abline(lm(height ~ bodymass))

## Vizualize Results of Model

# Create a Plotting environment of two row and columns
par(mfrow = c(2,2))
plot(lm_result)

# Residuals vs fitted: The first plot (residuals vs. fitted values) is a simple scatterplot between residuals and predicted values. 
#                      It is a scatter plot of residuals on the y axis and fitted values (estimated responses) on the x axis. 
#                      The plot is used to detect non-linearity, unequal error variances, and outliers.
#                      It should look more or less random.
# Characteristics of a well-behaved residual vs. fits plot 
#                      The residuals "bounce randomly" around the 0 line. This suggests that the assumption that the relationship is linear is reasonable.
#                      The residuals roughly form a "horizontal band" around the 0 line. This suggests that the variances of the error terms are equal.
#                      No one residual "stands out" from the basic random pattern of residuals. This suggests that there are no outliers.
# Normal Q-Q:          Normal probability plot. It will give a straight line if the errors are distributed normally, but points 4, 5 and 6 deviate from the straight line
#                      A normal probability plot is extremely useful for testing normality assumptions.  It’s more precise than a 
#                      histogram, which can’t pick up subtle deviations, and doesn’t suffer from too much or too little power, 
#                      as do tests of normality.
#                      The Q-Q is plotting the quantiles—the actual values of X against the theoretical values of X under the normal distribution. 
# Scale-Location:      Like the the first, should look random.  No patterns.  Ours does not–we have a strange V-shaped pattern.
# Cook's Distance:     The last plot (Cook’s distance) tells us which points have the greatest influence on the regression (leverage points). We see that points 2, 4 and 6 have great influence on the model.





