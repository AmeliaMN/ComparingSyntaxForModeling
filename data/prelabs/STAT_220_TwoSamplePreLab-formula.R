## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
GSS <- read.csv("data/GSS_clean.csv")


## -----------------------------------------------------------------------------
GSS <- filter(GSS, should_marijuana_be_made_legal != "")
GSS <- filter(GSS, self_emp_or_works_for_somebody != "")


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
prop.test(should_marijuana_be_made_legal ~ self_emp_or_works_for_somebody, data = GSS)


## -----------------------------------------------------------------------------
prop.test(should_marijuana_be_made_legal ~ self_emp_or_works_for_somebody, data = GSS)


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
t.test()


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
GSS <- transform(GSS, diff = highest_year_school_completed_father - highest_year_school_completed_mother)


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
t.test(~number_of_hours_worked_last_week, data = GSS, alternative = "two.sided", mu = 40)

