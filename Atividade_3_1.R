
acidTrans_Rec2019 <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/3531bafe-d47d-415e-b154-a881081ac76c/download/acidentes-2019.csv', sep = ';', encoding = 'UTF-8')
acidTrans_Rec2020 <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/fc1c8460-0406-4fff-b51a-e79205d1f1ab/download/acidentes_2020-novo.csv', sep = ';', encoding = 'UTF-8')
acidTrans_Rec2021 <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/2caa8f41-ccd9-4ea5-906d-f66017d6e107/download/acidentes_2021-jan.csv', sep = ';', encoding = 'UTF-8')

library(tidyverse)

acidTrans_Rec2019 <- acidTrans_Rec2019[, -(10:12)]

names(acidTrans_Rec2019)[1] <- "data"
  
  
banco_acidentesTransRec <- rbind(acidTrans_Rec2019, acidTrans_Rec2020, acidTrans_Rec2021)


banco_acidentesTransRec$sentido_via <- as.factor(banco_acidentesTransRec$sentido_via)