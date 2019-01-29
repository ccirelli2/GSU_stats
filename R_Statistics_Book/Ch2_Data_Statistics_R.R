# Ch2:  Data in Statistics and in R_______________________________________________________


# Factors
'Description:           Categorical, unordered.  Example:  Names, States, etc. 
 Creation:              factor()
'
names_test <- c('Todd', 'Brian', 'Joe')
names_factor <- factor(names_test)
print(names_factor)

'Syntax:    D = [60,70):    Means an interval between 60 and 70, including 60 but not 70.   SO this is 60-69'
grade <- LETTERS[1:4]
scores <- runif(100, min = 0, max = 100)
grade_letters <- cut(scores, breaks = c(0, 70, 80, 90, 100), labels = grade, right = FALSE)
grade_letters
table(grade_letters)                              # return count of grades in a table. 


# Ordered Factors
'To set an order to factors'

grade.factor <- factor(grade)
grade.levels <- factor(grade, ordered = TRUE)     # set order to factors
grade.levels
is.ordered(grade.levels)                          # check if object is ordered


# Dates
'Intro to using dates'
Sys.Date()
Sys.time()
Sys.timezone()

# Objects that Hold Data
'Types:           
            Lists:          Can contian arbitrary data types or objects.  Access single values using [[]] not single.  Single brackets are used for accessing elements of an array or vector.  
            Vectors:        dim 1 and length of at least 0. The ith element of a vector is accessed via v[i]. 
            Matrices:       k dimensions. wo dimensional arrays.   They are rectangular.  The intersection of the element in the ith row and jth column m[i,j]. Arrays have k dimensions. 
            Arrays:         Have n dimensions.  The distinction between a vector and an array is that an array has an attribute for dimensions. 
                            For example, a matrix object is a two-dimensional array.  It therefore has this dim attribute.   Its dimension vector has a length of 2.  The first
                            element indicates the number of rows and the second the num of columns. 
            Dataframes:     
            cbind(), rbind()  Dont forget about these functions. 
'


v <- 1:10
is.vector(v); is.array(v)      # vector, not an array

dim(v) <- c(10)
is.vector(v); is.array(v)      # array, not a vector. 

m <- matrix(0, ncol = 3, nrow = 2)       # matrix with 3 columns and 2 rows. 
is.array(m); is.matrix(m); attributes(m)

v <- 1:24; (a <- array(v ,dim = c(3,5,2)))  # create an array, 3 rows, 5 columns
help(array)

a <- 1
b <- 2
l <- list(a, b, letter = c('a', 'b'))             # List that contains objects 'a' and 'b'
l
mode(l)                     # returns 'list'
l$letter                    # access attribute. 



### Dataframes---------------------------------------------------
composers = c('Sibelius', 'Wagner', 'Shostakovitch')
grandiose = c(1,3,2)
df_music = data.frame(composers, grandiose)
df_music

# Coerce Data
as.data.frame(matrix(1:24, nrow = 4, ncol = 6))  # Coerce data into dataframe with as.data.frame

# Refer to columns
df_music$composers        # By Name
df_music[, 1]             # By index
df_music[, 'composers']   # By name - index

# Data Organization
univariate = 'data that describe or measure a single attribute'
Bivariate = 'data represented in pairs'
Multivariate = 'data are composed fo a set of observations on objects.'

data("airquality")
head(airquality)        # print head of dataframe
names(airquality)       # call column names


### Import & Export of Data ----------------------------------------------------

getwd()
setwd('home/ccirelli2/Desktop')
complaints_2019_01_28_19_55$Product    # loaded via gui. 


# Data Connections
install.packages("RODBC")
installed.packages()

# Connect to MySQL





