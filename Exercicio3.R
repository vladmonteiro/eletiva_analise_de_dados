library(data.table)
library(dplyr)
library(Hmisc)

covidPE <- read.csv("base_original/basegeral.csv", sep = ";", header = T)


ImputAleatorio <- round(runif(25, 5, 38))

covidPE$sintomas[ImputAleatorio] <- NA 

(covidPE$sintomas <- impute(covidPE$sintomas, "random"))


library(janitor)

vetor <- c("CONFIRMADO", "NEGATIVO")

covidPE <- covidPE %>%
  filter(classe %in% vetor)

tabyl(covidPE, municipio, classe)


covidPE <- covidPE %>%
  mutate(binariaTosse = ifelse (grepl("TOSSE", covidPE$sintomas), 1, 0))


tabyl(covidPE, classe, binariaTosse)


count(covidPE, classe)

covidPE$dt_notificacao <- as.Date(covidPE$dt_notificacao, format = "%Y-%m-%d")

library(zoo)

# soma dos valores negativos por data
covidNEG <- covidPE %>% 
  filter(classe == "NEGATIVO") %>%
  group_by(dt_notificacao) %>% count(classe)%>%
  rename(total = n)

#cálculo da médi móvel de resultados negativos

covidNEG <- covidNEG %>%
  mutate(movelNEG = rollmean(total, + = 7, align = "right", fill = 0))

library(ggplot2)
library(ggthemes)
ggplot(covidNEG, aes(x = dt_notificacao, y = total)) + geom_col() + theme_classic()

# soma dos resultados positivos por data

covidConf <- covidPE %>% 
  filter(classe == "CONFIRMADO") %>%
  group_by(dt_notificacao) %>% count(classe) %>%
  rename(total = n)

# média móvel

covidConf <- covidConf %>%
  mutate(movelConf = rollmean(total, 7, align = "right", fill = 0))

ggplot(covidConf, aes(dt_notificacao, total)) + geom_col() + theme_clean()



