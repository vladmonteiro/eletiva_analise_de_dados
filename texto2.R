install.packages("fuzzyjoin")
library(fuzzyjoin)
library(dplyr)

nome_estado <- c("Paraíba", "Ceará", "Rio de Janeiro", "São Paulo", "Mato Grosso", "Santa Catarina")

ideologia_governador <- c("centro", "esquerda", "direita", "direita", "direita", "direita")

dt1 <- as.data.frame(cbind(nome_estado, ideologia_governador))

nome_estado <- c("Paraiba", "Ceara", "R. Janeiro", "S. Paulo", "MT. Grosso", "St. Catarina")

governador <- c("Azevedo", "Castro", "Doria", "", "", "")

dt2 <- as.data.frame(cbind(nome_estado, governador))


bancoFuzzy <- fuzzyjoin::stringdist_join(dt1, dt2, mode = "left") 

grepl("direita", bancoFuzzy$ideologia_governador)

bancoFuzzy %>% 
  filter(ideologia_governador == "direita")