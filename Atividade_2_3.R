sample(ExemploNormal, 25, replace = FALSE)

sample(ExemploNormal, 25, replace = TRUE)

set.seed(350)

# Criando um bootstrap

ExemploBootsrapNormal <- replicate(20, sample(ExemploNormal, 15, replace = TRUE))
View(ExemploBootsrapNormal)

Media1 <- replicate(25, mean(sample(ExemploNormal, 15, replace = TRUE)))
summary(Media1)

Media2 <- replicate(50, mean(sample(ExemploNormal, 15, replace = TRUE)))
summary(Media2)

Media3 <- replicate(75, mean(sample(ExemploNormal, 15, replace = TRUE)))
summary(Media3)


mean(Media1)
mean(Media2)
mean(Media3)
mean(ExemploNormal)
