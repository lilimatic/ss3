set.seed(2345)
#Parametri
mu = 0.125
sigma = 0.34

#Iteracije
iter =10000
dt = 0.2
prinos = mu*dt + sigma*rnorm(10000)*sqrt(dt)
#Histogram
hist(prinos, breaks = 100, col = "yellow", freq =F, ylab = "gustina", main = "Raspodela prinosa metodom Monte Carlo")



