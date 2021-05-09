
# CSV
arvoresTombadasRec <-  read.csv2("http://dados.recife.pe.gov.br/dataset/54b30ac0-197b-4ad9-824c-854a220ad46c/resource/0c1935f4-1a7f-4c76-b3ba-b344951d6820/download/arvores-tombadas.csv") 

# rjson (não entendi por que essa estrutura fica assim, não há dados)
library(rjson)
alunos <- fromJSON(file = "http://dados.recife.pe.gov.br/dataset/ce5168d4-d925-48f5-a193-03d4e0f587c7/resource/fb09086d-5df2-48d6-b868-acb00513fab1/download/situacao-final-dos-alunos-por-periodo-letivo.json")
alunos <- as.data.frame(alunos)
 

#XLM 
library(XML)
UniversityCourses <- xmlToDataFrame("http://aiweb.cs.washington.edu/research/projects/xmltk/xmldata/data/courses/wsu.xml")