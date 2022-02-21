## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
GSS <- read_csv("data/GSS_clean.csv")


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
GSS %>% 
  prop_test(response = should_marijuana_be_made_legal, 
            explanatory = self_emp_or_works_for_somebody, 
            alternative = "two-sided")


## -----------------------------------------------------------------------------
GSS %>% 
  prop_test(response = should_marijuana_be_made_legal, 
            explanatory = self_emp_or_works_for_somebody, 
            alternative = "two-sided")


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
GSS %>%
  group_by(born_in_us) %>%
  # something you know about


## -----------------------------------------------------------------------------
GSS %>%
  t_test(response = highest_year_of_school_completed, 
         explanatory = born_in_us, 
         alternative = "two-sided")


## -----------------------------------------------------------------------------
GSS %>%
  t_test(response = highest_year_of_school_completed, 
         explanatory = born_in_us, 
         alternative = "two-sided")


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
GSS <- GSS %>%
  mutate(diff = highest_year_school_completed_father - highest_year_school_completed_mother)


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
GSS %>%
  t_test(response = number_of_hours_worked_last_week, 
         alternative = "two-sided", mu = 40)

