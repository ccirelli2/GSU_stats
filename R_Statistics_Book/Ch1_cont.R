# Ch1_continued_________________________________________________________________________________

rm(list = ls())

# Objects---------------------------------------------------------------------------------------

x<- 2                                       # book says x is a vector of length 1.  mode(x) says integer. 
x <- vector()                               # book says a vector of length 0.  mode(x) returns logical. 
x <- matrix()                               # book says x is a matrix of 1 column, 1 row. 
x <- function(){}                           # book says that x is a function that does nothing


# Departure (cool functions)
x <- letters[1:4]                           # returns letters coinciding with their index value. 
cbind(x)                                     # binds vectors as columns. 

# Inspecting Objects
x <- c(1,2,3,4)
typeof(x)
class(x)
mode(x)
dim(x)                                      # object dimension 
dimnames()                                  # for dimension names
attributes(x) 
https://www.youtube.com/watch?v=H3M0E-BNplQ

# Return Vector of Object Type & Coercion 

x <- numeric(3)
x <- integer(3)
x <- character(3)
x <- logical(3)
as.numeric(x)                             # Coerced to numeric. 


# Programming----------------------------------------------------------------------------------

# Conditional Execution
'Multi-line Syntax:       Seems a little weird and verbose, but youll need to follow the structure below. 
                          the condition must be follow if and be wrapped in (). 
                          then the function to be executed is wrapped in {}. 
                          There is also an else statement, the function for whcih also needs to be wrapped in {}
                          Line spacing:  appears that it must e followed directly. '
x <- 3

if (x>2) {
  print('x is greater than 2')
} else {
  print('x is less than 2')
}

'Single line conditional statement syntax'
if (x>2) print('shit') else print('crap')

'Adding conditions:  
  &, |,                   Apply to a vector element wise
  &&, ||                  Apply to the first element of a vector
'
if (x>2 & x>1) print('shit')


# Loops & break statements-------------------------------------------------
rm(list = ls())

# Iterate over an iterable object
x <- runif(10, min = 1, max = 20)
for (i in x) {print(i)}

# Iterate over an object that you create within the for loop
for (i in 1:10) {x <- i; print(x)}

# Functions---------------------------------------------------------------
'Syntax
                         function.name <- function(arguments){
                              body and return values
                         }
'

dumb <- function(){1}
dumb()                    # dumb() takes no arguments and returns 1. 

dumber <- function(x){x+1}
dumber(1)                 # dumber() take one input 'x' and returns x+1. 




# Graphics --------------------------------------------------------------
'Types:          There are three types of plotting functions.  High, low and dynamic. '


x11()                     # Starts the graphical driver.  see options under function. 
help(x11)
x11(width = 10, height = 10, title = 'Window System Graphics')

# High Level
'Use plot(), pairs(), coplot(), hist(), perspective()'

x <- runif(20); y <- runif(20); plot(x,y)

w <- 1; y <- 2; z <- 3; perspective(w,y,z)       # Multi dimension plotting. 

# Low Level
'Allows you to minipulate existing graphs'
lines(x, y)              # Should see that lines have now been drawn between each point. 


# Interactive plotting
' locator() and identify():      Find specific datapoints in a plot'




















