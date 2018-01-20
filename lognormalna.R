n_1 =c(seq(-4,7,0.1))
n_2 = c(seq(0,7,0.1))

#expon. transforma.
ln_2 = log(n_2)

normalna = dnorm(n_1)
#log normalna
lognormalna = dnorm(ln_2)

plot(n_1,normalna, col="red",ylim =c(0,0.4), xlim = c(-4,7), type="l", main = "Log-normalna raspodela upoređena 
     sa normalnom raspodelom", ylab="gustina", xlab="vrednosti")
lines(n_2, lognormalna, col="green", ylim =c(0,0.4), xlim = c(-4,7), type="l")





