install.packages("mice")
library(mice)
install.packages("VIM")
library(VIM)

mundo <- as.data.frame(cbind(mundo$gini10, mundo$literacy, mundo$dem_score14, mundo$hdi))

is.na(mundo) # aqui faz a detectação de valores ausentes de forma lógica
md.pattern(mundo) # aqui faz a detectação de valores ausentes de forma binária 

aggr(mundo) # exibe graficamente as variáveis com mais valores NA 

shadowWorld <- as.data.frame(abs(is.na(mundo)))

shadowWorld <- shadowWorld[which(sapply(shadowWorld, sd) > 0)] 
round(cor(shadowWorld), 3)
