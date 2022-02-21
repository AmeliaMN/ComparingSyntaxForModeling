## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
# this is where data-loading code goes


## -----------------------------------------------------------------------------
gf_point(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS)


## -----------------------------------------------------------------------------
cor(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS)


## -----------------------------------------------------------------------------
cor(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS, use = "complete.obs")


## -----------------------------------------------------------------------------
lm(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS)


## -----------------------------------------------------------------------------
m1 <- lm(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS)


## -----------------------------------------------------------------------------
summary(m1)


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------


