
#e0=refrigerador nuevo
#e1=refrigerador 1 año antiguedad
#e2=refrigerador 2 año antiguedad
#e3=refrigerador dañado en 3er año antiguedad
#e4=refrigerador reemplazado

estados<-c("e0","e1","e2","e3","e4")
mt3<-matrix(c(0,0.97,0,0.03,0,0,0,0.95,0.05,0,0,0,0,0.07,0.93,0,0,0,1,0,0,0,0,0,1),
            nrow = 5,
            byrow = TRUE,dimnames = list(estados,estados))
mt3

I<-matrix(c(1,0,0,0,1,0,0,0,1),nrow = 3, byrow = TRUE )
I
Q<-mt3[1:3,1:3]
Q
IQ<-I-Q
IQ
R<-mt3[1:3,4:5]
R
INVIQ<-solve(IQ)
INVIQ


INVIQ1<-INVIQ%*%R
INVIQ1
