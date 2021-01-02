library(markovchain)

estados<-c("estadoA","estadoB","estadoC")

matriz9<-matrix(c(0,1,0,2/3,0,1/3,2/3,1/3,0),nrow = 3,byrow = TRUE, dimnames = list(estados,estados))
matriz9

markov9<-new("markovchain",transitionMatrix = matriz9, states=estados)
markov9

#Saber si la cadena es Ergodica

ergodica<-is.irreducible(markov9)
ergodica

recurrente<-recurrentClasses(markov9)
recurrente
aperiodica<-period(markov9)
aperiodica
comunica<-communicatingClasses(markov9)
comunica

estadoestable<-steadyStates(markov9)
estadoestable

pp<-meanFirstPassageTime(markov9)
pp

plot(markov9)

