# HW5_QUESTION 3

# Details - % Risk of New Competitors 
#      13% No Risk
#      72% Moderate Risk
#      15% Very High Risk
#      12 international companies are planning to open new facilities. 
#      X,Y,Z denote number of new competitors that will pose no, moderate, 
#      or very high risk. 

rm(list = ls())

# a.) What is the range of the joint probability distribution for X, Y, Z?

# Permutations for X, Y, Z

x<- c(1,1,1,1,1,1,2,2,2,2,2,2)
y<- c(1,2,1,2,)
z<- c(1,1,2,2,)
# Probabilities X, Y, Z
p_x = 0.13
p_y = 0.72
p_z = 0.15

p_xyz = c((p_x*x)*(p_y*y)*(p_z*z))

x

# b.) Determine P(X = 1, Y = 3, Z = 1)



# c.) Determine P(Z < or = 2)