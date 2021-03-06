## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
GSS <- read.csv("data/GSS_clean.csv")


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
a1 <- aov(number_of_hours_worked_last_week ~ marital_status, data = GSS)


## -----------------------------------------------------------------------------
summary(a1)


## -----------------------------------------------------------------------------
sqrt(208.6 * (1 / 403 + 1 / 998))


## -----------------------------------------------------------------------------
TukeyHSD(a1, conf.level = 0.8)

