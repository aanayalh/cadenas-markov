library(agricolae)
material <-c("cobre","cobre","hierro","hierro",
             "cobre","cobre","hierro","hierro",
             "cobre","cobre","hierro","hierro",
             "cobre","cobre","hierro","hierro",
             "cobre","cobre","hierro","hierro",
             "cobre","cobre","hierro","hierro",
             "cobre","cobre","hierro","hierro",
             "cobre","cobre","hierro","hierro",
             "cobre","cobre","hierro","hierro",
             "cobre","cobre","hierro","hierro",
             "cobre","cobre","hierro","hierro",
             "cobre","cobre","hierro","hierro")
masa_material <-c(rep(50,4),rep(100,4),
                  rep(50,4),rep(100,4),
                  rep(50,4),rep(100,4),
                  rep(50,4),rep(100,4),
                  rep(50,4),rep(100,4),
                  rep(50,4),rep(100,4))
tiempo_exposicion <-c(rep("1min",16),rep("2min",16),rep("3min",16))
temperatura_exposicion<-c(rep("80c",8),rep("100c",8),
                          rep("80c",8),rep("100c",8),
                          rep("80c",8),rep("100c",8))
temperatura_reg<-c(23.1,23.2,23.5,22.4,22.8,23.5,23.9,23.7,
                   22.3,23.0,24.7,24.0,24.1,23.7,25.4,24.1,
                   23.2,22.6,25.2,25.7,23.7,23.9,24.3,24.0,
                   24.1,23.8,25.3,24.3,25.0,24.7,27.9,27.3,
                   24.3,25.5,26.7,27.0,28.8,27.3,29.0,29.4,
                   26.6,25.8,26.9,27.1,28.3,27.0,30.6,29.6)
Datos<-data.frame(material,masa_material,
                  tiempo_exposicion,
                  temperatura_exposicion,
                  temperatura_reg)
Datos

FactorA<-factor(material)
FactorB<-factor(masa_material)
FactorC<-factor(tiempo_exposicion)
FactorD<-factor(temperatura_exposicion)

Modelo <-lm(temperatura_reg~(FactorA+FactorB+FactorC+FactorD)^4)
ANOVA1 <- aov(Modelo)
summary(ANOVA1)

#GraficaEfectosPpales
Efectos <- data.frame(FactorA,FactorB,FactorC,FactorD,temperatura_reg)
plot.design(Efectos, fun="mean", main=" Gráfica de efectos principales", ylab= "Temperatura_Reg", xlab="Factor")