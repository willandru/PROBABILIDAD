## Varianza σ2 (Desconocida), Media μ (Desconocida) :: <-- Utilizamos t-student
##2 POBLACIONES NORMALES, INDEPENDIENTES
##VARIANZAS IGUALES
###EJEMPLO 5:

#En vista de los resultados obtenidos en el ejemplo 4, y suponiendo que las
#precipitaciones registradas en 11 estaciones meteorológicas de las dos regiones
# se distribuyen de acuerdo a variables normales de medias y varianzas
# desconocidas. Obtener un intervalo de confianza al 80% para la diferencia 
# del número medio de precipitaciones entre las dos provincias. 
# ¿Puede suponerse que el número medio de precipitaciones de las dos provincias es igual?

Reg_A <- c(100,89,84,120,130,105,60,70,90,108,130)
Reg_B <- c(120,115,96,115,140,120,75,90,108,130,135)

t.test(Reg_A,Reg_B,conf.level = 0.80,var.equal=TRUE)

#lA HIPOTESIS ALTERNA EN ESTE CASO ES QUE LA MEDIA NO ES IGUAL A 0
#Ya que en el intervalo de confianza [-26.44  -2.28], NO ESTA el 0, decimos 
# que las medias  no son iguales 