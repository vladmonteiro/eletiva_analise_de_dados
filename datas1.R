vetordata1 <- as.Date(c("2010-12-25", "2001-09-11 11:45", "1993-12-06 06:00"))

(str(vetordata2 <-as.POSIXct(vetordata1)))
unclass(vetordata2)

(str(vetordata3 <- as.POSIXlt(vetordata1)))
unclass(vetordata3)

library(lubridate)

year(vetordata1)

month(vetordata1, label = T)

wday(vetordata1, label = T)

vetordata1 + minutes(50)

