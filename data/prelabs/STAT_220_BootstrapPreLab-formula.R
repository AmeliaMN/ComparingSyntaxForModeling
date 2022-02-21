## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
GSS <- read.csv("data/GSS_clean.csv")


## -----------------------------------------------------------------------------
# write code here


## -----------------------------------------------------------------------------
# write code here


## -----------------------------------------------------------------------------
resample(GSS)


## -----------------------------------------------------------------------------
bootstrap_sample <- do(1) * resample(GSS)


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
set.seed(42)


## -----------------------------------------------------------------------------
set.seed(42)
bootstrap_sample <- do(1) * resample(GSS)
gf_histogram(~highest_year_of_school_completed, data = bootstrap_sample, binwidth = 2)
bootstrap_sample <- do(1) * resample(GSS)
gf_histogram(~highest_year_of_school_completed, data = bootstrap_sample, binwidth = 2)
set.seed(42)
bootstrap_sample <- do(1) * resample(GSS)
gf_histogram(~highest_year_of_school_completed, data = bootstrap_sample, binwidth = 2)


## -----------------------------------------------------------------------------
boot <- do(1000) * mean(~highest_year_of_school_completed, 
                        data = resample(GSS), na.rm = TRUE)


## -----------------------------------------------------------------------------
gf_histogram(~mean, data = boot)


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
confint(boot)

