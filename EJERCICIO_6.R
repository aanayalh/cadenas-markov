library(markovchain)

#Probando Cambios Git
#E0= máquinas funcionando al principio del día.
#E1= 1 máquina descompuesta en un día.
#E2= 2 máquinas funcionando dos días después de descompuesta. 

#matriz de Transicion
estados<-c("e0","e1","e2")
matriz1<-matrix(c(0,0,1,0,1/3,2/3,1/9,4/9,4/9),nrow = 3,byrow = TRUE,dimnames = list(estados,estados))
matriz1

#comprobando si una cadena de markov es ergodica

mch_1<-new("markovchain",transitionMatrix = matriz1, states=estados,name= "Cadena Markov Maquinas")
mch_1

plot(mch_1)

esergodica<-is.irreducible(mch_1)
esergodica

#Probabilidades de Estado Estable

estadoestable<-steadyStates(mch_1)
estadoestable

#Tiempos promedios de primer paso

tpprimerpaso<-meanFirstPassageTime(mch_1)
tpprimerpaso

#estado absorbente

estado_absorbente<-absorbingStates(mch_1)
estado_absorbente

