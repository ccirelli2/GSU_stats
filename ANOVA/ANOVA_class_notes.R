# ANOVA - Analysis of Variance
'Source:     Stats Anova Class
 Dataset:    Tensile_Strength'

# Clear Namespace 
rm(list = ls())

# Load Data
'Load:     Just use the Files tab to load the file/sheet. '

# Convert Concentration to a Factor
'Syntax looks like we are replacing the existing column with a new one w/ converted data'
Tensile_Strength$Concentration <- factor(Tensile_Strength$Concentration)
str(Tensile_Strength)

# Get Summary of Data
'For each of the 4 factors we have 6 observations (see output)
 Mean:  15.96 is the global mean.  In the class notes this is y_bar ..'
summary(Tensile_Strength)

# Create a Box Plot
'Note:  When working with factors, the plot() function will automatically plot a boxplot without having to call it.
 Furthermore:  For each factor R will plot a boxplot'
layout(matrix(1,1,1))  # size of plot
par(mar = c(3,3,1,1))  # specify the margins of the plot
boxplot(Tensile_Strength$Strength ~ Concentration, data = Tensile_Strength, xlab = 'Concentration', ylab = 'Strength')
'Strength versus Concentration'
grid(10,10)            # add grid lines

# Testing for Homogeneity of Variance 'Within' Each Factor
'Objective:      We are testing for the homogeneity of the variance within our 4 factors.
                 h0:   sigma.sq1 = sigma.sq2 = sigam.sq3, etc.
                 h1:   sigma.sq1 != sigma.sq2, etc. 
 Flinger Test:   If alpha is 5%, then we accept the Null Hypothesis,   We conclude that the variances are homogenious.  This is one of the underlying
                 assumptions for using ANOVA.
 df:             Degrees of freedom.  For this dataset df = 3, which is 4 features minus 1 parameter'
fligner.test(g = Tensile_Strength$Concentration, x = Tensile_Strength$Strength)


# ANOVA Oneway Test
'h0:            That the means are equal. 
 h1:            Means are equal. 
 F:             19.05
 Conclusion:    Reject null hypothesis that the means are equal. It means that the hardwood thickness has an affect
                on the tensile strength. 
'
ANOVA1 <- oneway.test(Tensile_Strength$Strength ~ Tensile_Strength$Concentration, data = Tensile_Strength, var.equal = T)
ANOVA1


# ANOVA Twoway Test
'Table:                 ANOVA table from lecture. 
 Sources of Variation:  Concentration & Residuals. 
 Sum of Squares:        Sum_sq
 Degree of Freedom:     df (a-1)
 Mean Squares:          MStr & MSe (first is for Concentraion and the second the residuals)
 f0:                    F value
 Conclusion:            Reject the null-hypothesis as the p_value is less than alpha. 
'

ANOVA2 <- aov(Tensile_Strength$Strength ~ Tensile_Strength$Concentration, data = Tensile_Strength)
summary(ANOVA2)


# Plot ANOVA2 Results
'Residuals vs. Fitted:   Plots the residuals for each of the four treatment means (see table).  Analysis:  No obvious
                         patters with the residuals. 
 Normal Q-Q:             Residuals appear to be normally distributed. 
 Scale-Location:         ?
 Constant Leverage:      ?
'

par(mar = c(2,2,1,1))
layout(matrix(c(1,2,3,4), 2,2))
plot(ANOVA2)

# Box Plot of Residuals
'Analysis:               Nicely scattered around zero. 
'
layout(matrix(1,1,1))
par(mar = c(5,5,1,1))
plot(Tensile_Strength$Concentration, ANOVA2$residuals)


# Where is the source of this difference?
'Pairwise Comparison:    Comparing the p values for each treatment.
 Row1 / Col1:            Compare 10% and 5% Tensile Strengh; Less than 5% there is a significant difference. 
                         Mu of 5% and 10% are not equal. 
                         Mu of 10% and 15% = 1.0.  The means are equal.  
 Note:                   You should probably investigate this further and look for a tutorial.
'

pairwise.t.test(Tensile_Strength$Strength, Tensile_Strength$Concentration, p.adjust = 'bonferroni')
















