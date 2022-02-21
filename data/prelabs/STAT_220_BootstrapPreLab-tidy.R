## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
GSS <- read_csv("data/GSS_clean.csv")


## -----------------------------------------------------------------------------
GSS <- GSS %>%
  drop_na(highest_year_of_school_completed)


## -----------------------------------------------------------------------------
# write code here


## -----------------------------------------------------------------------------
# write code here


## -----------------------------------------------------------------------------
bootstrap_sample <- GSS %>%
  specify(response = highest_year_of_school_completed) %>%
  generate(reps = 1, type = "bootstrap")


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
set.seed(42)


## -----------------------------------------------------------------------------
set.seed(42)
bootstrap_sample <- GSS %>%
  specify(response = highest_year_of_school_completed) %>%
  generate(reps = 1, type = "bootstrap")
ggplot(bootstrap_sample) + geom_histogram(aes(x = highest_year_of_school_completed), binwidth = 2)
bootstrap_sample <- GSS %>%
  specify(response = highest_year_of_school_completed) %>%
  generate(reps = 1, type = "bootstrap")
ggplot(bootstrap_sample) + geom_histogram(aes(x = highest_year_of_school_completed), binwidth = 2)
set.seed(42)
bootstrap_sample <- GSS %>%
  specify(response = highest_year_of_school_completed) %>%
  generate(reps = 1, type = "bootstrap")
ggplot(bootstrap_sample) + geom_histogram(aes(x = highest_year_of_school_completed), binwidth = 2)


## -----------------------------------------------------------------------------
boot <- GSS %>%
  specify(response = highest_year_of_school_completed) %>%
  generate(reps = 1000, type = "bootstrap") %>%
  calculate(stat = "mean")


## -----------------------------------------------------------------------------
ggplot(boot) + geom_histogram(aes(x = stat))


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------
get_ci(boot)

