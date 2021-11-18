## Varianza σ2 (Desconocida), Media μ (Desconocida) ..<--utilizamos t-student
##POBLACION NORMAL
###EJEMPLO 2:
# En una muestra de 9 preparados de jugo de tomate se ha obtenido una media
# de 21 mg/100cc y una cuasidesviación típica de 2.45 mg/100 cc. 
# Supuesto que el contenido de vitamina Cdel jugo de tomate se distribuye 
# según una distribución Normal de varianza desconocida. Se pide:

#a) Estimar el contenido medio de vitamina C del jugo de tomate.
#b) Calcular el intervalo de confianza al 98%

α=0.02
n=9
s=2.45
Ẍ=21

q= qt(1-(α/2),8,lower.tail=T)


###La funci?n que devuelve resultados de los cuantiles de la t-Student es:
#  qt(p,df,,ncp,lower.tial=T)
#donde:
#  p: Vector de probabilidades
# df: Grados de libertad
# lower.tail: par?metro booleano, si es T (True, por defecto), 
# las probabildiades son P(X<=x) de lo contrario, P(X>x)

lim_inf= Ẍ-q*s/sqrt(n)
lim_inf
lim_sup= Ẍ+q*s/sqrt(n)
lim_sup

#Entonces entre esos limites se mueve la concentracion de jugo de naranja



##CASO: Solamente tengo los datos y utilizo una funcion de R para calcular el intervalo

tomate = c(24,20,21,19,22,23,16,23,21)
t.test(tomate, conf.level= 0.98)