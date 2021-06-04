# cargamos los datos del fichero 200511COVID19MEXICO.csv"
install.packages("readr")
library(readr)
install.packages("tidyverse")
library(tidyverse)
url <- "https://raw.githubusercontent.com/emmanuelMG94/examen-prog/master/covid-data/200511COVID19MEXICO.csv"
dat <- read_csv(url)
download.file(url, "200511COVID19MEXICO.csv")
##OTRA MANERA DE  TENER UNA BASE CSV  EN R##
datos <- read.delim('clipboard', stringsAsFactors=TRUE)
datos
head(datos)
dim(datos)
str(datos)
#seleccionar casos sonora
SONORA<- grep( "Sonora", datos$ENTIDAD_NAC) 
dfA <- df[ SONORA, ]
head(dfA)
##grafico
datos <- read.delim('clipboard', stringsAsFactors=TRUE)
datos
head(datos)
library (ggplot2)
ggplot(data=datos, aes(x=ENTIDAD_NAC, y= TIPO_PACIENTE)) + 
    geom_bar(stat="identity", position="stack",col="blue") # 

dat1<-dat$ENTIDAD_NAC 
dat2<-dat$RESULTADO
dat1
dat2
dat<-data.frame(dat1,dat2)
dat
head(dat)
library(ggplot2)
ggplot(dat, aes(x=dat1, y=dat2 )) + 
  geom_line(colour="red")  + 
  geom_point( size=2, shape=21, fill="white", colour="red") + 
  theme_minimal()

##ST
datos<-read.delim("clipboard")
datos
plot(datos, type=l)
head(datos)
attach(datos)
Tot
Anualidad

ventas.ts<-ts(Tot, start=c(2020), frequency = 12)
ventas.ts

start(ventas.ts);end(ventas.ts)

class(ventas.ts)