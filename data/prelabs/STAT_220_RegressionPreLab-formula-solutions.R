## ----setup, include=FALSE--------------------------------------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
library(mosaic)
library(ggformula)


## ----data-load-------------------------------------------------------------------------------------------------------
GSS <- read.csv("data/GSS_clean.csv")


## --------------------------------------------------------------------------------------------------------------------
gf_point(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS)


## --------------------------------------------------------------------------------------------------------------------
cor(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS)


## --------------------------------------------------------------------------------------------------------------------
cor(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS, use = "complete.obs")


## --------------------------------------------------------------------------------------------------------------------
lm(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS)


## --------------------------------------------------------------------------------------------------------------------
m1 <- lm(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS)


## --------------------------------------------------------------------------------------------------------------------
summary(m1)


## --------------------------------------------------------------------------------------------------------------------
5.847 + 0.594*12


## --------------------------------------------------------------------------------------------------------------------
15 - 12.975

