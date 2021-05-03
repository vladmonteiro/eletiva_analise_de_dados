library(haven)
library(microbenchmark)



# Formato nativo - Vantagem: arquivo com tamanho menor / Desvantagem: não tem interoperabilidade 
# Formato csv e outros - Vantagem: interoperabilidade / Desvatagem: execução demorada 

# exportação em formato nativo do R
saveRDS(banco_acidentesTransRec, "base_tratada/acidentesRec.rds")

# exportão em formato csv
write.csv2(banco_acidentesTransRec, "base_tratada/acidentesRec.csv")

# exportação em formato spss (formato adicional requerido pelo exerício)
write_sav(banco_acidentesTransRec, "base_tratada/acidentesRec.sav")


# leitura da base em formato nativo R
acidentesRec <- readRDS('base_tratada/acidentesRec.rds')

#leitura da base em formato csv
acidentesRec1 <- read.csv2('base_tratada/acidentesRec.csv', sep = ';')

#leitura da base em formato spss
acidentesRec2 <- read_sav("base_tratada/acidentesRec.sav")


# compara os dois processos de exportação, usando a função microbenchmark

microbenchmark(a <- saveRDS(banco_acidentesTransRec, "base_tratada/acidentesRec.rds"), b <- write_sav(banco_acidentesTransRec, "base_tratada/acidentesRec.sav"), times = 5L)

microbenchmark(a <- readRDS('base_tratada/acidentesRec.rds'), b <- acidentesRec2 <- read_sav("base_tratada/acidentesRec.sav"), times = 5L)



# Resultados: execução dos arquivos em formato spss é mais demorada, e os arquivos são mais pesados. 
