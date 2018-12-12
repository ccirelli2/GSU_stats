# CHAPTER 1 __________________________________________________________________-

rm(list = ls())
# Assignment---------------------------------------------------------------------
'Directional:  Both a and b have not been assigned the value of 6'
a <- 6
6 -> b

# Call Functions----------------------------------------------------------------
'Type name folled by ().  For example, the below command calls the remove function rm()
 within which we define a list of values, of which is ls(), which contains every object
 in our namespace
 R Built-In-Functions:  https://www.statmethods.net/management/functions.html
'
rm(list = ls())  

# Range Function
'Syntax:     lower bound : upper bound.'
x <- 0:19


# Sequences:
seq(1, 10, by = 2)      # Generate a sequence from 1 to 10 by 2's. 
seq(1, 10, length = 5)  # 5 unique floats from 1 to 10. 


# Indexing
'Syntax:  object followed by [].  Add value of index between brackets.
 Note:    R indexes from 1 and not 0 like Python'
x[5]


# Generate Random Numbers
' Syntax:  runif( # of values to generate, min = lower bound of range, max = upper bound of range)
           range:  tell R that you want it to generate values between 10 and 20 with the same probability
                   of occuring. 
  Value:   returns floats as opposed to whole numbers.  I assume we could change this to integers by 
           wrapping the function with round()
'
runif(20, min = 10, max = 20)

# Assign Random Numbers to List:
y <- 0:20
d <- runif(20, min = 10, max = 20)


# Plots
x_norm <- rnorm(100000))
qqnorm(x_norm)

# Plot Normal Distribution
x <- runif(100000)
x.norm <- dnorm(x)
qqnorm(x.norm)


# Help function
'help(), help.sesarch(), example()
  search and example take a single string input and return options.'
help.search('random')
example('plot')


# Expressions 
' Note:               R is case sensitive 
  Acceptable Syntax:  dip.shit, dip_shit
  Semicolon:          All statements on a single line separated by a semicolon are grouped. 
'

# Get & Set Working directory
getwd()                            # get working directory
setwd('/home/ccirelli2/Desktop/Programming/R-Code/R_Statistics_Book')


# Importing Modules:  source(), sink(), history()
'Use souce() to call and run a module that you have saved. 
 sink():             Write code output to a file
 history():          Write commands to a file.  history(50) will write the last 50 commands to a file. 
'
source('normal.R')


# Check object type:
mode(x)

# Set number of digits 
options(digits = 3)
x <- .00000004


### Vectors--------------------------------------------------------------------------------------------
'Object def:      ordered collection of elements of the same mode'


# Create a Vector
x <- 1:10
x <- c(1,3,4)                 # c() creates a vector, which can be assigned to an object, in this case 'x'
x <- c('1', 3, 4)             # c() will force all values to a single value type. In this case, string. 
x <- vector(length = 10)      # vector of logical mode.  Returns 10 values of FALSE. 

# Create a Vector - Specify Mode

x <- integer(10)              # returns a vector with 10 values = 0. 
x <- character(10)            # returns a vector, 10 elements, all empty strings. 


## Vector Arithmetic
'Basis arithmetics can be applied to vectors (add, subtract, divide, multiply)
'
# Multiplication
x <- c(1,2,3,4,5)
y <- x*2
# Subtraction
x - y




# Data Functions ------------------------------------------------------------------------------------

x <- 0:10
length(x)                     # returns length of vector
sum(x)
mean(x)





















