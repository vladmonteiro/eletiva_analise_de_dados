

ls()

for (itm in ls()) { 
  print(formatC(c(itm, object.size(get(itm))), 
                format="d", 
                width=30), 
        quote=F)
}

naZero <- function(x) {
  x <- ifelse(is.na(x), 0, x)
}

  rm(list=ls()[!(ls() %in% c('banco_acidentesTransRec', 'naZero'))])

ls()

write.csv2(banco_acidentesTransRec, "base_tratada/acidentesRec.csv")

# entre os itens que constavam na área de trabalho do R, o banco_acidentesTransRec era o que mais consumia
# memória do R