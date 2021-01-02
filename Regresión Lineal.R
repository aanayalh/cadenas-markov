head(cars)
library(e1071)

#Analizando los Datos

#Grafico de Dispersion

scatter.smooth(x=cars$speed,y=cars$dist, main="Dist~Speed")

#Grafico de Caja
#Analizando Outliners

par(mfrow=c(1,2)) # divide area de grafico en 2 columnas

boxplot(cars$speed, main="Speed", 
        sub=paste("Outlier rows: ", 
        boxplot.stats(cars$speed)$out))  # box plot for 'speed'

boxplot(cars$dist, 
        main="Distance", 
        sub=paste("Outlier rows: ", 
        boxplot.stats(cars$dist)$out))  # box plot for 'distance'

#Grafica de Densidad

par(mfrow=c(1,2))

plot(density(cars$speed))

plot(density(cars$ ))