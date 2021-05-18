library(ff)
library(ffbase)

bancoExport  <- 'base_original/UNVotes.csv' 


#criação do arquivo no formato ff
system.time(sample04 <- read.csv.ffdf(file = bancoExport)) 

head(sample04)

# amostra com 2000 casos 
amostra <- sample04[sample(nrow(sample04), 2000), ]

# média de votos sim/yes. Obs: como resultado aparece N/A. N�o entendi por que.

mean(sample04$yes) 

# soma de abstenções. Aui tamb�m apareceu N/A 

sum(amostra$abstain)

# regressão simples 

lm (yes ~ as.factor(importantvote), data = sample04)