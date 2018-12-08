# Clear Namespace
rm(list=ls())

# Import R DataSets
library(datasets)

# Get Information on Datasets
library(help = "datasets")

# Orange Tree Dataset:  Age is the independent, Circumference Dependent
# Show Data
View(Orange)

# Plot Data:  Note the $ allows you to select a column. 
plot(Orange$age, Orange$circumference)
title('age versus circumference')

# Command to call Linear Regression is lm
# lm(dependent variable ~ independent variable)
lm_result <- lm(Orange$circumference ~ Orange$age)

# Get Summary of results
summary(lm_result)



