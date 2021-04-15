
# Exemplo de modelo normal 

ExemploNormal <- rnorm(70)
View(ExemploNormal)
summary(ExemploNormal)


# Exemplo de modelo binomial 

ExemploBinomial <- ?rbinom(50, 1, 0.65)
View(ExemploBinomial)
summary(ExemploBinomial)

# Exemplo de index

ExemploIndex <- seq(1, length(ExemploBinomial))