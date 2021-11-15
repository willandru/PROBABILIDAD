Ejemplo1
alpha<-0.05
n=64
varianza<-625
media<-1012
cuantil<-qnorm(1-alpha/2)
lim_inf<-media-cuantil*sqrt(varianza)/sqrt(n)
lim_inf
lim_sup<-media+cuantil*sqrt(varianza)/sqrt(n)
lim_sup

Ejemplo2
#En primer lugar, introducimos los datos del ejemplo#
alpha<-0.02
n=9
cuasi<-2.45
media<-21

#La función que devuelve resultados de los cuantiles de la t-Student es:
qt(p,df,,ncp,lower.tial=T)
donde:
p: Vector de probabilidades
df: Grados de libertad
lower.tail: parámetro booleano, si es T (True, por defecto), las probabildiades son P(X<=x) de lo contrario, P(X>x)#

cuantil<- qt((1-alpha/2),8,lower.tail=T)
lim_inf<-media-cuantil*cuasi/sqrt(n)
lim_inf
lim_sup<-media+cuantil*cuasi/sqrt(n)
lim_sup

tomate<-c(24,20,21,19,22,23,16,23,21)
t.test(tomate,conf.level=0.98)


Ejemplo3
prop.test(150,900)

alpha<-0.05
n=900
p=150/900
cuantil<-qnorm(1-alpha/2)
lim_inf<-p-cuantil*sqrt(p*(1-p))/sqrt(n)
lim_inf
lim_sup<-p+cuantil*sqrt(p*(1-p))/sqrt(n)
lim_sup


Ejemplo 4
Reg_A <-c(100, 89, 84, 120, 130, 105, 60, 70, 90, 108, 130)
Reg_B<-c(120, 115, 96, 115, 140, 120, 75, 90, 108, 130, 135)
Reg_A
Reg_B
var.test(Reg_A,Reg_B,conf.level = 0.80)

Ejemplo 5
Reg_A <-c(100, 89, 84, 120, 130, 105, 60, 70, 90, 108, 130)
Reg_B<-c(120, 115, 96, 115, 140, 120, 75, 90, 108, 130, 135)
t.test(Reg_A,Reg_B,conf.level = 0.80,var.equal=TRUE)

Ejemplo 6
Antes<-c(25, 20, 25, 28, 30, 30, 26, 15, 18, 22)
Despues<-c(30, 25, 28, 29, 30, 31, 24, 22, 25, 27)
t.test(Antes, Despues, paired = TRUE, conf.level = 0.99)

