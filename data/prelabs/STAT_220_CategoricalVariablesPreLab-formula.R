## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
# this is where data-loading code goes


## -----------------------------------------------------------------------------
gf_bar(~marital_status, data = GSS)


## -----------------------------------------------------------------------------
# write code here


## -----------------------------------------------------------------------------
gf_bar(~marital_status, fill = ~born_in_us, data = GSS)


## -----------------------------------------------------------------------------
gf_bar(~marital_status, fill = ~born_in_us, data = GSS, position = "dodge")


## -----------------------------------------------------------------------------
# write code here


## -----------------------------------------------------------------------------
tally(~marital_status, data = GSS)


## -----------------------------------------------------------------------------
tally(~marital_status, data = GSS, format = "proportion")


## -----------------------------------------------------------------------------
tally(marital_status ~ general_happiness, data = GSS, format = "proportion")

