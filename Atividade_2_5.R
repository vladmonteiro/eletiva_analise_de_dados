library(poliscidata)

# carregamento do banco world 

banco2 <- world

# comando para listar todos os países incluídos na base dados banco2

banco2$country

# comando que indica países que registram IDH abaixo de 0,500

banco2$hdi<=0.5 

# comando que indica o tipo de regime atribuído a cada país da base 

banco2[ , "dem_level4", drop = FALSE]

# comando que indica quais valores da variáveil dem_level14 correspondem a
# "authoritarian"

banco2$dem_level4 == "Authoritarian"


# comando que indica países com regime autoritário localizado na Ásia ou na África

banco2$dem_level4 == "Authoritarian" & banco2$regionun =="Asia" | banco2$regionun == "Africa"

# comando que indica observações da variável regilion cujo valor corresponde a
# a "mulsim"

match(banco2$religoin, "Muslim")