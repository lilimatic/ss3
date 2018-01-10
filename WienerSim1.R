#Simulacija standartnog Wienerovog procesa
#radi uporedjenja rezultata
set.seed(123)
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
plot(t,W, type="l", main="Primer simulacije standartnog Wienerovog procesa", xlab = "vreme", ylab = "W(t)", col="red")
abline(v=0, col="black",lty="dashed")
abline(v=100, col="blue", lty="dashed")