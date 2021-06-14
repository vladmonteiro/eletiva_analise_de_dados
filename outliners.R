library(dplyr)
library(data.table)
library(plotly)

# carregar dados covid19 Pernambuco
covid19PE <- fread('https://dados.seplag.pe.gov.br/apps/basegeral.csv')

covid19PEMun <- covid19PE %>% count(municipio, sort = T, name = 'casos') %>% mutate(casos2 = sqrt(casos), casosLog = log10(casos))

plot_ly(y = covid19PEMun$casos2, type = "box", jitter = 0.4)

plot_ly(y = covid19PEMun$casosLog, type = "box", jitter = 0.4)


OutlinersCovid <- boxplot.stats(covid19PEMun$casosLog)$out