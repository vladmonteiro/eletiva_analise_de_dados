library(tidyverse)
library(dplyr)
library(data.table)
library(xlsx)
library(validate)
  

democracy <- read_excel('base_original/Country_and_Territory_Ratings_and_Statuses_FIW1973-2020.xlsx')

democracy2 <- democracy %>% 
  pivot_longer(!Country, names_to = "year", values_to = "FH_Index")

# Índice Freedom House não pode ser menor de 0 nem menor do que 14
validar <- validator(FH_index >=0, FH_index>=14)

validar2 <- confront(democracy2, validar)

summary(validar2)

