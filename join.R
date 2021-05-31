library(tidyverse)
library(dplyr)
library(foreign)


conflicts <- read.csv2('base_original/MIDB4.3.CSV', sep = ',')

politics <- read.csv2('base_original/institutions.csv', sep = ',')



banco <- inner_join(conflicts, politics, 
                         by = c("styear" = "year", "stabb" ="ifs"))  

banco2 <- inner_join(banco, mundo, 
                         by = c("countryname" = "country") )  