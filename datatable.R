library(data.table)
library(dplyr)
library(tidyverse)

mundo_table <- world %>% setDT()

mundo_table[ , lm(formula = gini10 ~ democ)]