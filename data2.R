library(drc)

url = 'https://raw.githubusercontent.com/wcota/covid19br/master/cases-brazil-states.csv' # passar a url para um objeto
covidBR = read.csv2(url, encoding='latin1', sep = ',') # baixar a base de covidBR

covidAL <- subset(covidBR, state == 'AL') # DADOS REFERENTES À ALAGOAS 

covidAL$date <- as.Date(covidAL$date, format = "%Y-%m-%d")


covidAL$dia <- seq(1:length(covidAL$date)) 

predDia = data.frame(dia = covidAL$dia) 
predSeq = data.frame(dia = seq(max(covidAL$dia)+1, max(covidAL$dia)+180)) 
predDia <- rbind(predDia, predSeq)  

fitLL <- drm(vaccinated ~ dia, fct = LL2.5(),
             data = covidAL, robust = 'mean') 

plot(fitLL, log="", main = "Log logistic") 

predLL <- data.frame(predicao = ceiling(predict(fitLL, predDia))) # usando o modelo para prever para frente, com base no vetor predDia
predLL$data <- seq.Date(as.Date('2021-01-18'), by = 'day', length.out = length(predDia$dia)) # criando uma sequência de datas para corresponder aos dias extras na base de predição

predLL <- merge(predLL, covidAL, by.x ='data', by.y = 'date', all.x = T) # juntando as informações observadas da base original 


# os resultados de um parte das observações são negativos  ??