#Uso o mesmo banco do exercício anterior

# Comando transforma a variável democ em binária. Se o país for uma democracia (YES), 
# é atribuido valor 1. 

banco2$Exemplo <- ifelse(banco2$democ == "Yes", 1 , 0)

# Comando transforma variável oecd em binária. Se país não for membro da OCDE, recebe
# 0. 

banco2$Exemplo2 <- ifelse(banco2$oecd == "Not member", 0 , 1)

