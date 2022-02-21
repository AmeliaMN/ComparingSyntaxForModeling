## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
GSS <- read_csv("data/GSS_clean.csv")


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
5.84740 + 0.59403 * 12


## -----------------------------------------------------------------------------
predict(m1, newdata = data.frame(highest_year_school_completed_spouse = 12), interval = "confidence")
predict(m1, newdata = data.frame(highest_year_school_completed_spouse = 12), interval = "prediction")

