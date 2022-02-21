## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
GSS <- read_csv("data/GSS_clean.csv")


## -----------------------------------------------------------------------------
GSS %>%
  drop_na(general_happiness) %>%
  group_by(general_happiness) %>%
  summarize(n = n()) %>%
  mutate(prop = n/sum(n))


## -----------------------------------------------------------------------------
GSS %>%
  chisq_test(response = general_happiness)


## -----------------------------------------------------------------------------
GSS %>%
  drop_na(marital_status, general_happiness) %>%
  group_by(marital_status, general_happiness) %>%
  summarize(n = n())


## -----------------------------------------------------------------------------
GSS %>%
  chisq_test()

