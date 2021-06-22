install.packages("pdftools")
install.packages("textreadr")
library(textreadr)
library(dplyr)
library(tidyverse)
library(pdftools)


doc <- read_pdf('base_original/calendario_reuniao.pdf', ocr = T)


#tentei fazer desse modo, mas não deu muito certo

doc$text <- ifelse(
  grepl("\\d{2}/\\d{2}", doc$text),  "\\d{2}-\\d{2}", NA)

# então resolvi fazer do seguinte modo

doc$text <-str_replace_all(string = doc$text, pattern = "/", replacement = "-")

(datas <- str_extract_all(doc$text, "\\d{2}-\\d{2}"))

