# criação de um vetor chamado despesas 

despesas <- c("combustível", "cinema", "mercado", "cartão", "financimaento")

# criação de um vetor que abriga os valores para as respectivas despesas incluidas 
# no vetor anterior
valor <- c(250, 120, 470, 650, 495)

# criação do data frame jutando os dois vetores

df2 <- data.frame(despesas, valor)

# uso do sapply para fazer a média e soma da coluna

sapply(df2[, 2], mean)

lapply(df2[, 2], sum)

# Quando ativo os comados, o resultado repete os dados das colunas em vez da média  e da 
# somátoria. Fiz isso com outras bases, mas chego ao mesmo impasse 