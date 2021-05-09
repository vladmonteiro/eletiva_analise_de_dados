library(dplyr)
library(rvest) 

# dataframe com dados de um tabela da Wikipédia com os países com maiores gastos militares 

url <- "https://en.wikipedia.org/wiki/List_of_countries_by_military_expenditures" 

urlTables <- url %>% read_html %>% html_nodes("table") 

urlLinks <- url %>% read_html %>% html_nodes("link" )

TopMilitarySpenders <- as.data.frame(html_table(urlTables[3]))