library(FrF2)

Tabla <- FrF2(nruns = 16, 
              nfactors = 4, 
              factor.names = list(tipodematerial=c(-1,1), 
                                  masademaerial=c(-1,1),
                                  temperaturaexpuesta=c(-1,1),
                                  tiempodeexposicion=c(-1,1)),
              replications = 2, randomize = F)


resultado<-c(23.6,24.4,21.8,22.8,21.7,24.7,24.1,22.8,24.3,24.4,23.7,24.6,23,21,23,22.8,  
             22.6,22.4,23.5,22.6,22.3,24,23.7,24.1,23.2,28.8,23.9,24,23,23.3,22.7,23.8)

tipodematerial<-c(-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,
                  -1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1)
masademaerial<-c(-1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,1,
                 -1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,1)
temperaturaexpuesta<-c(-1,-1,-1,-1,1,1,1,1,-1,-1,-1,-1,1,1,1,1,
                       -1,-1,-1,-1,1,1,1,1,-1,-1,-1,-1,1,1,1,1)
tiempodeexposicion<-c(-1,-1,-1,-1,-1,-1,-1,-1,1,1,1,1,1,1,1,1,
                      -1,-1,-1,-1,-1,-1,-1,-1,1,1,1,1,1,1,1,1)

Tabla <- add.response(design = Tabla, response = resultado)
Tabla

factor1 <- factor(tipodematerial)
factor2 <- factor(masademaerial)
factor3 <- factor(temperaturaexpuesta)
factor4 <- factor(tiempodeexposicion)


Modelo <- lm(resultado~(factor1+factor2+factor3+factor4)^4)
anova <- aov(Modelo)
summary(anova)

bartlett.test(rstandard(Modelo))
qqline(rstandard(Modelo))

plot(rstandard(Modelo))
qqline(0,0)


