library(markovchain)

#Punto2
estados<-c("e1","e2","e3","e4","e5","e6")
mt2<-matrix(c(0.3,0.2,0.4,0.1,0.0,0.0,0.0,0.3,0.0,0.0,0.5,0.2,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0),
            nrow = 6,
            byrow = TRUE,
            dimnames = list(estados,estados))
mt2
mc2<-new("markovchain",transitionMatrix=mt2,states=estados, name="Cadena 2")                                         
mc2

#a
estado_inicial<-c(1,0,0,0,0,0)
pasos<-3
estado_final<-estado_inicial*mc2^pasos
estado_final

#b
Q<-mt2[1:2,1:2]
Q
R<-mt2[1:2,3:6]
R
I<-mt2[4:5,4:5]
I
OperacionIQ<-I-Q
OperacionIQ
Inversa<-solve(OperacionIQ)
Inversa

IQR<-Inversa%*%R
IQR

