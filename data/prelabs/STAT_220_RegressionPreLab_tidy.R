## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, error = TRUE)
library(Lock5Data)
# put in the other two packages you need here


## ----data-load----------------------------------------------------------------
# this is where data-loading code goes


## -----------------------------------------------------------------------------
ggplot(GSS) +
  geom_point(aes(x = highest_year_school_completed_spouse, y = highest_year_of_school_completed))


## -----------------------------------------------------------------------------
GSS %>%
  summarize(correlation = cor(y = highest_year_of_school_completed, 
                              x = highest_year_school_completed_spouse))


## -----------------------------------------------------------------------------
GSS %>%
  drop_na(highest_year_of_school_completed, highest_year_school_completed_spouse) %>%
  summarize(correlation = cor(
    y = highest_year_of_school_completed,
    x = highest_year_school_completed_spouse))


## -----------------------------------------------------------------------------
lm(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS)


## -----------------------------------------------------------------------------
m1 <- lm(highest_year_of_school_completed ~ highest_year_school_completed_spouse, data = GSS)


## -----------------------------------------------------------------------------
m1 %>%
  summary()


## -----------------------------------------------------------------------------



## -----------------------------------------------------------------------------


