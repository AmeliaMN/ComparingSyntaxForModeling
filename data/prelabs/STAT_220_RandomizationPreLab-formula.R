## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
GSS <- read.csv("data/GSS_clean.csv")


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
diff(mean(number_of_hours_worked_last_week ~ self_emp_or_works_for_somebody, data = GSS, na.rm = TRUE))


## -----------------------------------------------------------------------------
one_randomization <- mean(number_of_hours_worked_last_week ~ shuffle(self_emp_or_works_for_somebody), data = GSS, na.rm = TRUE)
one_randomization
diff(one_randomization)


## -----------------------------------------------------------------------------
set.seed(42)


## -----------------------------------------------------------------------------
randomization <- do(1000) * diff(mean(number_of_hours_worked_last_week ~ shuffle(self_emp_or_works_for_somebody), data = GSS, na.rm = TRUE))


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------


