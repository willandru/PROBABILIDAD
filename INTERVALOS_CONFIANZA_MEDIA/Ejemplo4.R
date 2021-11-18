## COCIENTE DE LAS VARIANZAS :: TEST DE VARIANZAS IGUALES
##POBLACION NORMAL
###EJEMPLO 4:

# La siguiente tabla proporciona datos sobre la precipitación total registrada
# en 11 estaciones meteorológicas de dos regiones. Suponiendo independencia y 
#normalidad. Calcular un intervalo de confianza a un nivel de confianza del 80%
#para el cociente de varianzas en ambas poblaciones. ¿Puede asumirse que ambas 
#varianzas son iguales?

Reg_A <- c(100,89,84,120,130,105,60,70,90,108,130)
Reg_B <- c(120,115,96,115,140,120,75,90,108,130,135)

var.test(Reg_A, Reg_B, conf.level = 0.8)

# Podemos afirmar que el intervalo de confianza a un nivel de confianza del 80%
# para el cociente de las varianzas de las dos distribuciones
# es(0.5801448,3.1295847). Este intervalo de confianza contiene al valor 1, 
# por lo que se puede suponer que las varianzas de las dosdistribuciones son idénticas.