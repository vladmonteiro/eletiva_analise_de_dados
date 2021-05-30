library(tidyverse)
library(dplyr)
library(data.table)
library(xlsx)

  

democracy <- read_excel('base_original/Country_and_Territory_Ratings_and_Statuses_FIW1973-2020.xlsx')

democracy2 <- democracy %>% 
  pivot_longer(!Country, names_to = "year", values_to = "FH_Index")