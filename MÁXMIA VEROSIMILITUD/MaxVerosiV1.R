fun <- function (x) x**2-12*x
plot (fun, 0,10)
 (v <-nlm(fun,1))
points(v$estimate, v$minimum, col="blue", lwd= 3)
grid()

#Ejemplo 1: Máxima Verosimilitud

a <- runif(1,30,50)
b <- runif(1,12,100)

x.obs <- rbeta(10000, a,b)

hist(x.obs, prob=T)
# Hasta aca hemos creado una muetra de datos que se distribuyen de fomra gamma
#con parametros a,b, sin embargo, suponemos que no conocemos
#los parametros, solamente la muestra. 

Neg_Ver <- function(theta) -sum(log(dbinom(x.obs, theta[1], theta[2])))
(parametros <-nlm(Neg_Ver, c(6,12)))$estimate
