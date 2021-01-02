library(markovchain)

#E1 = no ha tenido accidentes en los últimos 2 años
#E2 = ha tenido accidentes en cada uno de los últimos 2 años
#E3 = tuvo un accidente en el primero de los 2 últimos años
#E4 = tuvo un accidente en el segundo de los 2 últimos años

#Matriz de Transicion

estados<-c("e1","e2","e3","e4")

m7<-matrix(c(0.97,0,0,0.03,0,0.1,0.9,0,0.97,0,0,0.03,0,0.1,0.9,0),nrow = 4,byrow = TRUE,dimnames = list(estados,estados))
m7

#cadena de markov

markov7<-new("markovchain",transitionMatrix = m7, states=estados)

markov7

esergodica<-is.irreducible(markov7)
esergodica

esrecurrente<-recurrentClasses(markov7)
esrecurrente
aperiodica<-period(markov7)
aperiodica
comunica<-communicatingClasses(markov7)
comunica

estadoestable<-steadyStates(markov7)
estadoestable

pp<-meanFirstPassageTime(markov7)
pp

plot(markov7)

eab<-absorbingStates(markov7)
eab
