## Varianza σ2 (Conocida), Media μ (Desconocida)-->NORMAL ESTANDAR
##POBLACION NORMAL
###EJEMPLO 1:
# De una cierta población se ha extraído una muestra de 64 individuos, cuyo
#valor medio es 1012 -->(este es el ẍ TEORICO) . Se sabe por otras experiencias del mismo tipo, que la 
# desviación típica vale 25 (σ). Hallar intervalos de confianza para el valor medio 
# de la población a los niveles de confianza del 95% Y 99%

# -->En este contexto tenemos que construir el intervalo y tenemos casi todo Ẍ, σ, n, faltan los percentiles
# --> 1−α = 95% (cada cola toma 2.5%) , es decir (0.025 cola izquierda, 0.975 cola derecha)


α_1= 0.05 #PARA EL 95%
α_2= 0.01 #PARA EL 99%
n= 64
σ2= 625
Ẍ=1012
q1= qnorm(1-(α_1/2))
q2= qnorm(1-(α_2/2))

#INTERVALO DE CONFIANZA  DEL 95%
lim_inf_1= Ẍ-q1*sqrt(σ2)/sqrt(n)
lim_sup_1= Ẍ+q1*sqrt(σ2)/sqrt(n)
lim_inf_1
lim_sup_1
#INTERVALO DE CONFIANZA  DEL 99%
lim_inf_2= Ẍ-q2*sqrt(σ2)/sqrt(n)
lim_sup_2= Ẍ+q2*sqrt(σ2)/sqrt(n)
lim_inf_2
lim_sup_2