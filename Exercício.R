# Crie um data frame com pelo menos 500 casos e a seguinte composição: duas variáveis normais
# de desvio padrão diferente, uma variável de contagem (poisson), uma variável de contagem com 
# dispersão (binomial negativa), uma variável binomial (0,1), uma variável qualitativa que 
# apresenta um valor quando a variável binomial é 0 e outro quando é 1, e uma variável de index. 
library(tidyverse)

set.seed(760)

var_normal1 <- rnorm(600, sd = 4 )

var_normal2 <- rnorm(600, sd = 2)

var_poisson <- rpois(600, 10)
  
var_binom_neg <- rnbinom(600, mu = 1, 1)

var_binom <- rbinom(600, 1, 0.80)

var_quali = c()

for (i in var_binom) {
  if (i == 0) {
  var_quali <- rbind(var_quali, "falso")
  }
  else {
  var_quali <- rbind(var_quali, "verdaeiro")  }
}

var_index <- seq(1, length(var_normal1))

df <- data.frame(
  var_normal1, var_normal2, var_poisson, var_binom_neg, var_binom, var_quali, var_index)


# Centralize as variáveis normais.

funCentralizar <- function(x) {
  x <- x - mean(x)
  return(x)
}

Centralizar1 <- funCentralizar(df$var_normal1)
  
Centralizar2 <- funCentralizar(df$var_normal2)

Centralizar3 <- funCentralizar(df$var_poisson)


# Troque os zeros (0) por um (1) nas variáveis de contagem. 

funcBinaria <- function(x) {
  for (i in x) {
    if (i <= 0) {
    cat(1)
  } 
  }
}


funcBinaria(df$var_index)
funcBinaria(df$var_binom)
funcBinaria(df$var_binom_neg)


# Crie um novo data.frame com amostra (100 casos) da base de dados original. 

df2 <- df[sample(1:nrow(df), 100), ]