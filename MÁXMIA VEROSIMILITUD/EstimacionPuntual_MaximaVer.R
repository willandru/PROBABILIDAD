
#
# FUNCION POISSON (lambda)
#
n=750 # DEFINIMOS EL TAMAÑO DE LA MUESTRA
estimacion= rep(0,n)  # UN VECTOR PARA ALMACENAR LAS ESTIMACIONES DEL PARAMETRO DE LA POISSON

#DEFINIMOS LA FUNCION DE SOPORTE PARA UNA POISSON 

nlnl= function(lambda){
  n*lambda - sum(x)*log(lambda) + sum(log(factorial(x)))
}

#GENERAMOS N MUESTRAS QUE SIGUEN UNA DISTRIBUCION DE POISSON DE PARAMETRO
# LAMBDA=2. PARA CADA MUESTRA ALMACENA LA ESTIMACION EN EL VECTOR ANTERIOR

for (i in 1:n) {
  x=rpois(n,2)
  nlmin= nlm(nlnl, p=c(0.5), hessian=TRUE)
  estimacion[i]= nlmin$estimate
}
plot(seq(0,5,.01), sapply(seq(0,5,.01), nlnl), type='l', xlab=expression(lambda), ylab='soporte')
estimacion[n]

library(MASS)

AJUSTE= fitdistr(x,"poisson")
AJUSTE$estimate[1]

hist(x, probability=TRUE)

# Dibuja la distribución Poisson con los parámetros estimados para la última muestra
lines(0:100,dpois(0:100,estimacion[n]),col="red")

# Muestra el histograma, media y desviación típica de las estimaciones para todas las muestras
hist(estimacion,probability=TRUE, xlab=expression(hat(lambda)))
mean(estimacion)
sd(estimacion)


#
# FUNCION NORMAL (miu, sigma)
#


## Estima los parámetros de una variable aleatoria que sigue una distribución Normal

# Inicializa dos vectores para almacenar las estimaciones de los parámetros de la Normal
estimacionmu=rep(0,n)
estimacionsigma=rep(0,n)

# Define la función de soporte para una distribución Normal; 
# se define la negativa para poder buscar el mínimo con nlm
nlnl=function(parametros) {
  sum(0.5*(x-parametros[1])^2/parametros[2] + 0.5*log(parametros[2]))
}

# Genera n muestras aleatorias que siguen una distribución Normal de parámetros mu=35 y sigma=4
# Para cada muestra, almacena la estimación en el vector anterior
for (i in 1:n){
  x=rnorm(n,35,4)
  nlmin=nlm(nlnl,theta <- c(0,5), hessian = TRUE)
  estimacionmu[i]=nlmin$estimate[1]
  estimacionsigma[i]=sqrt(nlmin$estimate[2])
}

# Muestra los parámetros estimados para la última muestra generada
estimacionmu[n]
estimacionsigma[n]

# Estima la media y la desviación típica para la última muestra generada con la función fitdistr
ajuste=fitdistr(x,"normal")
ajuste$estimate[1]
ajuste$estimate[2]

# Muestra el histograma de la última muestra generada
hist(x, probability=TRUE)

# Dibuja la distribución Normal con los parámetros estimados para la última muestra
lines(0:500/10,dnorm(0:500/10,estimacionmu[n],estimacionsigma[n]),col="red")

# Muestra el histograma, media y desviación típica de las estimaciones de mu para todas las muestras
hist(estimacionmu, probability=TRUE, xlab=expression(hat(mu)))
mean(estimacionmu)
sd(estimacionmu)

# Muestra el histograma, media y desviación típica de las estimaciones de sigma para todas las muestras
hist(estimacionsigma, probability=TRUE, xlab=expression(hat(sigma)))
mean(estimacionsigma)
sd(estimacionsigma)
