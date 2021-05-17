library(data.table)

banco  <- 'base_original/conflict_location.csv' 

# extração direta

system.time(sample01 <- read.csv2(banco))


# extração incompleta com amostra, só para teste  

sample02 <- read.csv2(banco, nrows = 100) 


# extração com função fread

system.time(sample03 <- fread(banco))