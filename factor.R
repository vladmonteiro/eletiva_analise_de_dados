
powers <- c("EUA", "AUS", "RUS", "CHI", "SOA", "KOR", "EUA", "TUR")

recode <- c(super_power = "EUA", super_power = "RUS", super_power = "CHI")

#haveria um modo de simplicar o código da linha anterior? 

(powers <- factor(powers, levels = recode, labels = names(recode)))