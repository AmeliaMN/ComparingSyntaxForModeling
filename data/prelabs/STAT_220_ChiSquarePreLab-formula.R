## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
GSS <- read.csv("data/GSS_clean.csv")


## -----------------------------------------------------------------------------
tally(~general_happiness, data = GSS, useNA = "no")


## -----------------------------------------------------------------------------
chisq.test()


## -----------------------------------------------------------------------------
tally(marital_status ~ general_happiness, data = GSS, useNA = "no")


## -----------------------------------------------------------------------------
chisq.test()

