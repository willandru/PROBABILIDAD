## Varianza σ2 (Desconocida), Media μ (Desconocida) ..<--utilizamos PROPORCION
##POBLACION NO NORMAL
###EJEMPLO 3:

# En una muestra de 900 personas con pelo oscuro se encontró que 150 
#de ellas tenían los ojos verdes.

#Construir un intervalo de confianza al 95% para la proporción de individuos 
#que teniendo el pelo oscuro posee los ajos verdes. 
#¿Son compatibles estos resultados con la suposición de que dicha proporción vale 1/4 ?

#SIMPLEMENTE: Hacemos la prueba de proporcion para calcular el itnervalo de confianza 
# Note que por defecto el intervalo de confianza de esta funcion es del 95%

prop.test(150,900)

#prop.test(150,900, conf.level = 0.9)

#Se rechaza la hipotesis  de que la suposicion vale 1/4, ya que 0.25 no esta 
# dentro de el intervalo de confianza encontrado con el test de PROPORCIONES [0.143 0.193]


##SI LO QUISIERA HACER A MANO

α=0.05
n=900
p= 150/900
q= qnorm(1-α/2)

lim_inf= p-q*sqrt(p*(1-p))/sqrt(n)
lim_inf
lim_sup= p+q*sqrt(p*(1-p))/sqrt(n)
lim_sup