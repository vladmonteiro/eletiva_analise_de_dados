
alunosRec2011 <- 'base_original/situacaofinalalunos2011.csv'

amostra2011 <- read.csv.ffdf(file = alunosRec2011)

alunosRec2012 <- 'base_original/situacaofinalalunos2012.csv'

amostra2012 <- read.csv.ffdf(file = alunosRec2012)

alunosRec2013 <- 'base_original/situacaofinalalunos2013.csv'

amostra2013 <- read.csv.ffdf(file = alunosRec2013)

alunosRec2014 <- 'base_original/situacaofinalalunos2014.csv'

amostra2014 <- read.csv.ffdf(file = alunosRec2014)

alunosRec2015 <- 'base_original/situacaofinalalunos2015.csv'

amostra2015 <- read.csv.ffdf(file = alunosRec2015)

alunosRec2016 <- 'base_original/situacaofinalalunos2016.csv'

amostra2016 <- read.csv.ffdf(file = alunosRec2016)

alunosRec2017 <- 'base_original/situacaofinalalunos2017.csv'

amostra2017 <- read.csv.ffdf(file = alunosRec2017)

alunosRec2018 <- 'base_original/situacaofinalalunos2018.csv'

amostra2018 <- read.csv.ffdf(file = alunosRec2018)

alunosRec2019 <- 'base_original/situacaofinalalunos2019.csv'
 
amostra2019 <- read.csv.ffdf(file = alunosRec2019)

alunosRec2020 <- 'base_original/situacaofinalalunos2020.csv'

amostra2020 <- read.csv.ffdf(file = alunosRec2020)


library(ffbase)

alunosRecTotal <- ffdfrbind.fill(amostra2011, amostra2012, amostra2013, amostra2014, amostra2015, amostra2016, amostra2017, amostra2018, amostra2019, amostra2020)

ls

rm(list=(ls()[ls()!="alunosRecTotal"]))
   

saveRDS(alunosRecTotal, "base_tratada/alunosRecTotal.rds") 