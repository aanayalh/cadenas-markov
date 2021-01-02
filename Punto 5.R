#Estados
#E1=Contabilidad
#E2=ConsultoriaAdmin
#E3=Div1
#E4=Div2
#E5=Div3

estados5<-c("e1","e2","e3","e4","e5")
mt5<-matrix(c(0.1,0.3,0.2,0.2,0.2,0.3,0.2,0.3,0,0.2,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1),nrow = 5, byrow = TRUE, dimnames = list(estados5,estados5))
mt5

uI
Q<-mt5[1:2,1:2]
Q

IQ<-I-Q
IQ

INV<-solve(IQ)
INV

R<-mt5[1:2,3:5]
R

INV0<-INV%*%R
INV0

prorrateo<-matrix(c(63000,63000,63000,210000,210000,210000), nrow = 2, byrow = TRUE)
prorrateo

costos<-INV0*prorrateo
costos

