install.packages("ade4")
install.packages("arules")
library(ade4)
library(arules)


mundo2 <- mundo %>%
  select(eu, democ_regime, democ_regime08, gdpcap2_08, gdp_cap3, rich_democ) 

mundodummy <- acm.disjonctif(mundo2)

mundo$lifeex_f <- discretize(mundo$lifeex_f, method = "interval", breaks = 3, labels = c("alto", "média", "baixa"))