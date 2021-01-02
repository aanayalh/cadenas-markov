library(markovchain)

#e0=computadora trabajando
#e1=computadora descompuesta

estados<-c("e0","e1")

m3<-matrix(c(0.95,0.05,0.50,0.50),nrow = 2, byrow = TRUE, dimnames = list(estados,estados))
m3

markov8<-new("markovchain",transitionMatrix = m3, states=estados)
markov8

#probabilidad de que en 4 horas siga trabajando

pro4<-markov8^4
pro4

#Saber si la cadena es Ergodica

ergodica<-is.irreducible(markov8)
ergodica

esrecurrente<-recurrentClasses(markov8)
esrecurrente
aperiodica<-period(markov8)
aperiodica
comunica<-communicatingClasses(markov8)
comunica

#Probabilidades de Estado Estable

estadoestable<-steadyStates(markov8)
estadoestable

#Tiempo promedio de primer paso

pp<-meanFirstPassageTime(markov8)
pp
