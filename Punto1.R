#1

#Estados de suscripciones

#E1= de 0 a 1 años
#E2= de 1 a 2 años
#E3= > 2 años
#R= Cancela la suscripcion

estados1<-c("e1","e2","e3","R")

mt1<-matrix(c(0.0,0.8,0.0,0.2,0.0,0.0,0.9,0.1,0.0,0.0,0.96,0.04,0.0,0.0,0.0,1.0),
            nrow = 4,
            byrow = TRUE,dimnames = list(estados1,estados1))
mt1

I<-matrix(c(1,0,0,0,1,0,0,0,1),nrow = 3, byrow = TRUE)
I
Q<-mt1[1:3,1:3]
Q
OperacionIQ1<-I-Q
OperacionIQ1
Inv<-solve(OperacionIQ1)
Inv
#R<-mt1[1:3,4:5]
#R

