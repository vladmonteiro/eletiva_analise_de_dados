library(tidyverse)

# atribuição de um banco de dado a partir de uma base já integrada ao próprio R
banco <- USArrests %>%
  select(UrbanPop, Murder)

plot(banco)

str(banco)

#Execução de uma regressão linear simples

regressao <- lm(Murder ~ UrbanPop, data = banco)
summary(regressao)

str(regressao)