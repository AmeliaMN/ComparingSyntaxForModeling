## ----setup, include=FALSE--------------------------------------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
library(mosaic)
library(ggformula)


## --------------------------------------------------------------------------------------------------------------------
options(na.rm = TRUE)


## ----data-load-------------------------------------------------------------------------------------------------------
GSS <- read.csv("data/GSS_clean.csv")


## --------------------------------------------------------------------------------------------------------------------
tally(~self_emp_or_works_for_somebody, data = GSS, format = "proportion")


## --------------------------------------------------------------------------------------------------------------------
sqrt((0.1*0.9)/2348)


## --------------------------------------------------------------------------------------------------------------------
qnorm(0.975)


## --------------------------------------------------------------------------------------------------------------------
0.1 - 1.96 * 0.006
0.1 + 1.96 * 0.006


## --------------------------------------------------------------------------------------------------------------------
prop.test(~self_emp_or_works_for_somebody, data = GSS)


## --------------------------------------------------------------------------------------------------------------------
(0.09880750-0.1)/0.006191163


## --------------------------------------------------------------------------------------------------------------------
pnorm(-0.1926132)


## --------------------------------------------------------------------------------------------------------------------
prop.test(~self_emp_or_works_for_somebody, 
          data = GSS, 
          success = "Self-employed", 
          alternative = "greater", 
          p = 0.1)


## --------------------------------------------------------------------------------------------------------------------
mean(~number_of_hours_worked_last_week, data = GSS)


## --------------------------------------------------------------------------------------------------------------------
sd(~number_of_hours_worked_last_week, data = GSS)

14.5/sqrt(2348)


## --------------------------------------------------------------------------------------------------------------------
qt(0.975, df = 2347)


## --------------------------------------------------------------------------------------------------------------------
41.28 - 1.96 * 0.3
41.28 + 1.96 * 0.3


## --------------------------------------------------------------------------------------------------------------------
t.test(~number_of_hours_worked_last_week, data = GSS)


## --------------------------------------------------------------------------------------------------------------------
(41.28-40)/0.3


## --------------------------------------------------------------------------------------------------------------------
pt(4.27, df=2348, lower.tail = FALSE)


## --------------------------------------------------------------------------------------------------------------------
t.test(~number_of_hours_worked_last_week, 
       data = GSS, 
       alternative = "two.sided", 
       mu = 40)

