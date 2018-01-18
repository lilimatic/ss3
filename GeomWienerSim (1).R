set.seed(165)
#Broj iter
iter= 12345

#Podesavanja vremenskih parametara
#12 meseci
T=12
dt= T/ (iter-1)
t= c(seq(0,T, by=dt))


#Podesavanje procentualnog drifta i procentualne varijacije
sigma=0.3
mu=0.125

#Simulacija
X=S=c(rep(0, times=iter))
X[1] = S[1] =  1

for(i in 2:iter){
  #Uopsteni Vinerov proces, Vinerov proces sa driftom
  X[i] = X[i-1]+rnorm(1)*sqrt(dt)
  #Geometrijski Vinerov proces
  S[i] = S[1]*exp((mu-(sigma^2)/2)*(i-1)*dt+sigma*X[i])
}

#Grafik 
plot(t,S,type="l", col="blue",main=expression(paste("Simulacija geometrijskog Vinerovog proces S(t) za ",mu," = 0.125 i ",sigma," = 0.3"))
     ,ylab = "S(t)", xlab = "mesec", ylim=c(-1,5))
lines(t,X, col="red")
abline(h=0, col="black", lty="dotted")





