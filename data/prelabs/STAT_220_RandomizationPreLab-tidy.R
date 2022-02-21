## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
GSS <- read_csv("data/GSS_clean.csv")


## -----------------------------------------------------------------------------
GSS <- GSS %>%
  drop_na(
    number_of_hours_worked_last_week,
    self_emp_or_works_for_somebody
  )


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
one_randomization <- GSS %>%
  specify(response = number_of_hours_worked_last_week, 
          explanatory = self_emp_or_works_for_somebody) %>%
  hypothesize(null = "independence") %>%
  generate(reps = 1, type = "permute")


## -----------------------------------------------------------------------------
one_randomization %>%
  group_by(self_emp_or_works_for_somebody) %>%
  summarize(mean = mean(number_of_hours_worked_last_week))


## -----------------------------------------------------------------------------
set.seed(42)


## -----------------------------------------------------------------------------
randomization <- GSS %>%
  specify(response = number_of_hours_worked_last_week, 
          explanatory = self_emp_or_works_for_somebody) %>%
  hypothesize(null = "independence") %>%
  generate(reps = 1000, type = "permute") %>%
  calculate(stat = "diff in means", 
            order = c("Self-employed", "Someone else"))


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------


