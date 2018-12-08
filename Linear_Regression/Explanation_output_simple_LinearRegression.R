### Source 
#   https://feliperego.github.io/blog/2015/10/23/Interpreting-Model-Output-In-R


## IMPORT DATASET_____________________________________________________________________________________
library(datasets)
# Get Information on datasets
library(help="datasets")

# View cars dataset----------------------------------------------------------------------------------
View(cars)

# Plot Dataset---------------------------------------------------------------------------------------
plot(cars, col='blue', 
     pch=20, cex=2, 
     main="Relationship between Speed and Stopping Distance for 50 Cars",
     xlab="Speed in mph", 
     ylab="Stopping Distance in feet")

# Generate Linear Regression-------------------------------------------------------------------------

set.seed(122)   # generates 122 random variables. 
speed.c = scale(cars$speed, center=TRUE, scale=FALSE)
mod1 = lm(formula = cars$dist ~ speed.c, data = cars)
summary(mod1)


#### OUTPUT___________________________________________________________________________________________

## Call:            is the function that was called.  lm() requires the dependent and independent data and source of the data. 
#                   distance is dependent and speed independent.  So, bases on the speed, what is the approx distance to stop the car. 


## Residuals:       Difference between the observed response and predictual.  Actual distance to stop minus predicted. 
#  Interpretation:  Looking for a symetric distribution about the mean.  If not symetric, the model predicts values that are far
#                   away from the actual points. 

# How to Visualize Residuals--------------------------------------------------------------------------  
                      #https://drsimonj.svbtle.com/visualising-residuals
par(mfrow = c(2, 2))  # Split the plotting panel into a 2 x 2 grid
plot(mod1)            # Plot the model information

## Coefficients--------------------------------------------------------------------------------------
#                       Contains two rows, the first is the intercept. 
#  Intercept:           Distance to stop when taking into consideration all of the cars in our dataset (avg)
#  Slope:               The second variable after Intercept "speed.c".  Effect speed has on distance. 
#                       For ever 1 mph increase in spead distance increases by 3.9324. 
#  Standard Error:      Average amount that the coefficient estimates vary from the actual average value of our response variable. 
#                       Can also be used to calculate confidence intervals. 
# Coefficeint t-value:  how many standard deviations our coefficeint estimate is from 0. We want it to be far away from zero 
#                       in order to show a relationship between speed and distance. Should also be large relative to the standard error. 
# Coefficient Pr(>|t|): Probability of observing any value equal or larger than t. A small p value means that there is a low probability that
#                       we will observe a relationship between our dep and inde variables due to chance.  
#                       If our p value is > than our alpha we reject the null hypothesis that there is a relationship. 
# Asterix:              *** represent a highly significant p-value. Consequently, a small p-value means that we can reject the null 
#                       hypothesis and conclude that there is a relationship 
# Residual errors:      Measure of the quality of the linear regression. Associated with the error term. 
#                       The Residual Standard Error is the average amount that the res7ponse (dist) will deviate from the true regression line.
#                       15.38 means that the actual distance to stop can deviate by 15.38 ft vs the regression line. 
# Avg % Error:          Divide residual error by intercept (average ft to stop) to get avg % error. Here it is 15/48 = 35%. 
# Degrees of Freedom:   The number of datapoints that went into the estimation of the parameters after taking into consideration
#                       the estimation of the parameters.  In our case it was 50-2, 50 observations and two paramters (intercept, slope)
# R-squared:            How well the model is fitting our actual data. Always lies between 0 and 1. 
#                       In our model, 65% of the variance in the response variable can be explained by the indp variable. 
# Adj R-squared         Adjusted for multiple independent variables and is the preferred metric.  Based on the formulas for R2, the more
#                       Independent variables we have, the more R2 will increase.  Adjusted R-squared takes into account the number of 
#                       Independent variables as the number of degrees of freedom and therefore does not suffer from this affect. 
# F-statistic           Is a good indicator of whether there is a relationship between our predictor and the response variables.
#                       An F statistic is a value you get when you run an ANOVA test or a regression analysis to find out if the means 
#                       between two populations are significantly different. 
#                       https://www.statisticshowto.datasciencecentral.com/probability-and-statistics/f-statistic-value-test/ 



















