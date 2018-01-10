set.seed(123)
#Parametri \mu i \sigma zavise od X_t i t

#funkcija za drift \mu
mu = function(X,t){
  mu = X+t                                  
  return(mu)
}

#funkcija za \sigma
sigma = function(X,t){
  sigma  = X*t                                 
  return(sigma)
}

#Delta t
delta = 0.001
#Racunamo n i t
#n
n = 1/delta    
#t
t =c(seq(0, n,delta))

#faktor skaliranja dt
dx = sqrt(delta)

#Matrica Vinerovog procesa
w=matrix(runif(n), n, 1)
#Skaliranje na -1,1
w=2*(w > 0.5)-1
#Nagib procesa
dw=w*dx

#Simulacija Itovog procesa
X =matrix(0, n, 1)
X[1] =1
for (i in 2:dim(dw)[1]) {
  X[i]  = mu(X[i-1],t[i-1])*delta + sigma(X[i-1],X[i-1])*dw[i] + X[i-1]
}

t1= seq(0,n, n/5)
x = c(seq(0, 1, 0.2))
#Grafik
matplot(X, type = "l",  
        xlab = "vreme", ylab = "X(t)",
        ylim = c(min(X), max(X)),xaxt="n",
        main = "Simulacija Itovog procesa X(t)", 
        col = "red", xlim = c(0,n))

axis(side=1, at = t1, labels = x)
