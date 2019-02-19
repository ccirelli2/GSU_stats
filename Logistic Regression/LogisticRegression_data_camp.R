# Logistic Regression

'Descroption:        Modeling a binary response variable. 

  Function:            glm(function, data = , family = binomial)
  Probability          Scale is not continous as we only have a probability for each x. 
  odds (y_hat):        y_hat / 1-y_hat = exp (b0 + b1*x)
  glm                  used to fit genera linearized models


'

rm(list = ls())

# Create a Logistic Regression Model
admitted <- UCLA_acceptance_data_binary$admit
student_gpa <- UCLA_acceptance_data_binary$gpa
student_gre <- UCLA_acceptance_data_binary$gre
glm1_admission <- glm(admitted ~ student_gpa + student_gre, data = UCLA_acceptance_data_binary, 
                      family = 'binomial')
summary(glm1_admission)

# Generate Scatter Plot Models:  lm vs glm (ggplot2)
'Note that we did not adjust our linear model for a binary response'
library(ggplot2)  # loads functions into namespace
plot_admitted_v_gpa <- ggplot(data = UCLA_acceptance_data_binary, 
                              aes(y =admitted, x = student_gpa + student_gre)) + geom_point()

plot_admitted_v_gpa + geom_jitter(width = 0, height = 0.05, alpha = 0.5) +
                     geom_smooth(method = 'lm', se = FALSE)  + # add normal lm regression line. 
                     geom_smooth(method = 'glm', se = FALSE, color = 'red', 
                                  method.args = list(family = 'binomial'))


# Interpret Output
'Deviance Residuals:    Not very useful as they dont eminate from a least squared method. 
                        We fit logistic regression with MLE.   


'








