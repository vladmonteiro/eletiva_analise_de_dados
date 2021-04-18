library(poliscidata)

banco2 <- world

# criando função básica
primeiraFunc <- function() {
  cat("HI, HALLO, HOLA, MERHABA, BONJOUR\n")
}

primeiraFunc()


# Aplicando função com condicional 

classIDH <- function(hdi) { # aqui é criando uma função para classificar países de acordo com IDH
     if(hdi <= 0.5) {
     print("subdesenvolvido")
  } else {
  print("desenolvido")
  }
 }

# Aplicando 
  
classIDH(banco2$hdi)

# Tentei usar com repetição, mas não tive êxito. No final das contas, a função só gera resultado 
# para a primeira linha 