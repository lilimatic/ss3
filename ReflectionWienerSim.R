#Simulacija standartnog Wienerovog procesa
#radi uporedjenja rezultata
set.seed(150)
W = c()
#W(0)=0 iz definicije 
W[1]=0
t = seq(0,365,1)
#Glavni deo
for(i in 1:365)
{
  #Iskoristacava se nezavisnost i normalna raspodela prirastaja
  W[i+1]=W[i]+rnorm(1)
}
plot(t,W, type = "l", xlim=c(0,365), ylim = c(-20,20), xlab = "vreme", ylab = "W(t)", main="Princip refleksije za simulaciju procesa W(t)")
a = W[100]
t1 = 100:365
lines(t1, 2*a - W[t1], col="red",type = "l")
abline(h=W[100], col="blue")
abline(v=100, col="blue")




      
      
      