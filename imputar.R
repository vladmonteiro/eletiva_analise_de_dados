library(Hmisc)
library(poliscidata)

sample <- cbind(world$gini10, world$dem_score14)

sample <- as.data.frame(sample)


sample <- impute(sample, fun = mean)

table(is.imputed(sample$V1))


sample2 <- as.data.frame(cbind(world$hdi, world$spendeduc, world$spendhealth))

(sample2 <- impute(sample2, "random"))