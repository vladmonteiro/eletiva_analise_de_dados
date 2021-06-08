library(dplyr)
library(tidyverse)
library(poliscidata)



mundo <- world

mundo %>%
  summarise(media_desigualdade = mean(gini10, na.rm = TRUE))
  

mundo %>%
  select(democ, gdppcap08) %>% 
  group_by(democ) %>%
  summarise(mediaPerCapita = mean(gdppcap08, na.rm = TRUE),
            medianaPerCapita = median(gdppcap08, na.rm = TRUE),
            desvio = sd (gdppcap08, na.rm = TRUE)
  )

mundo %>% 
  mutate(eu = recode(eu,
                     "EU Member state" = "yes", 
                     "Not member" = "no"))

mundo %>%
  arrange(hdi)

