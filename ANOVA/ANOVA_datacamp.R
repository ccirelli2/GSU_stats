# ANOVA - Datacamp_____________________________________________________________

'Topic------------------------------------------------------------------------              
                      Variability in runner finishing times.
 Variability:         May be due to a number of factors.  Previous running exp, 
                      sleep, training, etc. 
 Approach to 
 Assessing imp
 of factors:          Partition the total variability due to one variable versus
                      variability due to all other variables.  Then you compare them. 

 Hypothesis Testing (Vocabulary & Social Class)-------------------------------
 h0                   The average score is the same across all classes. 
 h1                   The average score different between at least one class. 

Total Variability:    Variability due to all factors  
Variability due to 

grouping variable:    In this case it is social class. 

Types of Variability ---------------------------------------------------------
 - Between:           Variability between our group variable (explained). 
 - Within:            Within each group dataset (unexplained).                    

ANOVA Table ------------------------------------------------------------------

term      df      sumsq       meansq        statistic     p.value

class     3       236.5       78.8          21.7          0
residuals 791     2869        3.6           Na            Na

- 1st Row:            Refers to teh group variability. 
- 2nd Row:            Within variability. Called the error row

- sumsq:              Measure the variability.  Row 1 is the variability associated
                      with our group class.  The second row is the variability of
                      within each dataset.  **The sum of these two values equals the
                      SST, which is the measure of the total variability in the response
                      variable
Percentage of
Explaned variability: sumsq row1 / sumsq row2. *This is the r2 value that we would get
                      if we set this up as a regression. 

F-statistic:          meansq between group var / meansq within group var.  Its the ratio
                      of one to the other.

p.value               area under the f distribution beyond the alpha area. 

Data Source           https://assets.datacamp.com/production/course_5103/datasets/gss_wordsum_class.csv


Conditions for ANOVA ----------------------------------------------------------------------

1.) Independence      within groups the sample observations must be independent
                      between groups the groups must be independent of each other.
    how               random sampling and assignment (so the groupings)
                      each nj (sample) is less than 10% of the respective population. 
                      stratification:  https://en.wikipedia.org/wiki/Stratified_sampling


2.) Normality         the distribution of the response variable should be nearly normal 
                      within each group. 
3.) Equal Variance    groups should have roughly equal variance. 

'

# Run ANOVA Test
word_sum <- gss_wordsum_class$wordsum
word_class <- gss_wordsum_class$class
aov_word_sum_class <- aov(word_sum ~ word_class)
summary(aov_word_sum_class)



































