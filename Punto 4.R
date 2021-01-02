#Estados
#E1= nuevo interes
#E2= poco interes
#E3= gran interes
#E4= interes borrado
#E5= Compre

estados4<-c("e1","e2","e3","e4","e5")

mt4<-matrix(c(0,0.6,0.3,0.1,0,0,0.3,0.2,0.2,0.3,0,0.1,0.4,0,0.5,0,0,0,1,0,0,0,0,0,1),
            nrow = 5, byrow = TRUE,dimnames = list(estados4,estados4))
mt4

I<-matrix(c(1,0,0,0,1,0,0,0,1),nrow = 3, byrow = TRUE)
I

Q<-mt4[1:3,1:3]
Q

IQ<-I-Q
IQ

invIQ<-solve(IQ)
invIQ

R<-mt4[1:3,4:5]
R

IQR<-invIQ%*%R
IQR

