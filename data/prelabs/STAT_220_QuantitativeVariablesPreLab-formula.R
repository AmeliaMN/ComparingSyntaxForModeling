## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
# this is where data-loading code goes


## -----------------------------------------------------------------------------
gf_histogram(~number_of_hours_worked_last_week, data = GSS)


## -----------------------------------------------------------------------------
gf_histogram(~number_of_hours_worked_last_week, data = GSS, binwidth = 10)


## -----------------------------------------------------------------------------
gf_histogram(~number_of_hours_worked_last_week, data = GSS, binwidth = 15) # change binwidth


## -----------------------------------------------------------------------------
# write code here


## -----------------------------------------------------------------------------
# write code here


## -----------------------------------------------------------------------------
# write code here


## -----------------------------------------------------------------------------
# write code here


## -----------------------------------------------------------------------------
gf_boxplot(number_of_hours_worked_last_week ~ factorize(marital_status), data = GSS)


## -----------------------------------------------------------------------------
mean(~number_of_hours_worked_last_week, data = GSS)


## -----------------------------------------------------------------------------
mean(~number_of_hours_worked_last_week, data = GSS, na.rm = TRUE)


## -----------------------------------------------------------------------------
# write code here


## -----------------------------------------------------------------------------
# write code here

