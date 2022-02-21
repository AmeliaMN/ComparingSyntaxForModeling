## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
library(tidyverse)
library(infer)


## ----data-load----------------------------------------------------------------
GSS <- read_csv("data/GSS_clean.csv")


## -----------------------------------------------------------------------------
GSS %>%
  drop_na(self_emp_or_works_for_somebody,
          should_marijuana_be_made_legal) %>%
  group_by(self_emp_or_works_for_somebody,
           should_marijuana_be_made_legal) %>%
  summarize(n = n()) %>%
  mutate(prop = n/sum(n))
0.647-0.69


## -----------------------------------------------------------------------------
GSS %>%
  infer::prop_test(response = should_marijuana_be_made_legal, 
                   explanatory = self_emp_or_works_for_somebody, 
                   conf_level = 0.9, order = c("Self-employed", "Someone else"))


## -----------------------------------------------------------------------------
GSS %>%
  drop_na(self_emp_or_works_for_somebody,
          should_marijuana_be_made_legal) %>%
  infer::prop_test(response = should_marijuana_be_made_legal, 
                   explanatory = self_emp_or_works_for_somebody, 
                   order = c("Self-employed", "Someone else"))


## -----------------------------------------------------------------------------
GSS %>%
  drop_na(born_in_us, highest_year_of_school_completed) %>%
  group_by(born_in_us) %>%
  summarize(mean = mean(highest_year_of_school_completed))
12.7-13.9


## -----------------------------------------------------------------------------
GSS %>%
  drop_na(born_in_us, highest_year_of_school_completed) %>%
  infer::t_test(response = highest_year_of_school_completed, explanatory = born_in_us, order = c("No", "Yes"))


## -----------------------------------------------------------------------------
GSS %>%
  drop_na(born_in_us, highest_year_of_school_completed) %>%
  drop_na(born_in_us, highest_year_of_school_completed) %>%
  infer::t_test(response = highest_year_of_school_completed, explanatory = born_in_us, order = c("No", "Yes")) 


## -----------------------------------------------------------------------------
GSS <- GSS %>%
  mutate(diff = highest_year_school_completed_father - highest_year_school_completed_mother)


## -----------------------------------------------------------------------------
GSS %>%
  drop_na(diff) %>%
  summarize(mean = mean(diff))


## -----------------------------------------------------------------------------
GSS %>%
  drop_na(diff) %>%
  summarize(
    mean = mean(diff),
    sd = sd(diff),
    n = n()
  ) %>%
  mutate(se = sd / sqrt(n)) %>%
  mutate(t_stat = mean/se) %>%
  mutate(pvalue = 2 * pt(t_stat, df = n - 1, lower.tail = TRUE))

