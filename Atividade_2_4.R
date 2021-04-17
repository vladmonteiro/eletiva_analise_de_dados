# criando uma base 

ExemploBinomial2 <- rnbinom(250, mu = 4, size = 15)

# Histograma da base antes centralização

hist(ExemploBinomial2)

# Aplicação da centralização 

SampleCentral <- ExemploBinomial2 - mean(ExemploBinomial2)
hist(SampleCentral)