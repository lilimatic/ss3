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
dX=c(rep(0, times=iter))
dX[1] = 0

for(i in 2:iter){
  #Uopsteni Vinerov proces, Vinerov proces sa driftom
  dX[i] = dX[i-1]+rnorm(1)*sqrt(dt)
  #Geometrijski Vinerov proces
}

#Grafik 

plot(t,dX,type="l",main="Simulacija uopstenog Vinerovog procesa dX(t)"
       ,ylab = "dX(t)", xlab = "mesec", ylim=c(-1.5,3)) 

  abline(h=0, col="red", lty="dotted")




