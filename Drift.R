#Driftshop
#Simulacija standartnog Wienerovog procesa
#radi uporedjenja rezultata
set.seed(43)
iter = 10000

#Podesavanje vremenskih parametara
T=365
sim = T/(inter-1)
t = seq(0,365,1)


W = c()
#W(0)=0 iz definicije 
W[1]=0

#Glavni deo
for(i in 1:sim)
{
  #Iskoristacava se nezavisnost i normalna raspodela prirastaja
  W[i+1]=W[i]+rnorm(1)
}
plot(sim,W, type="l", main="Primer simulacije standartnog Wienerovog procesa", 
     xlab = "vreme", ylab = "W(t)", col="red")
     

#Modelovanje drifta
mu = 3
sigma = 3
X = c()

t = seq(1,365,1)
X[1]=0
for(i in 1:365){
  X[i] = mu*i + sigma*W[i]
}
lines(t,X, type = "l", col="blue")


abline(v=0, col="black",lty="dashed")
abline(v=100, col="blue", lty="dashed")

mu = 10
sigma = 15
X = Y = c()

t = seq(1,365,1)
X[1]=0
for(i in 1:365){
  X[i] = mu*i + sigma*W[i]
  Y[i]= Y[i-1]+rnorm(1)*sqrt(dt)
}
X
length(X)
length(t)
lines(t,X, type = "l", col="red")
plot(t,X, type = "l", col="red")





  
