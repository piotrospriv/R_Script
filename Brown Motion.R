s0<-300
T<-1
I<-100
K<-1000
sigma<-0.2
mi<-0.2
dt<-T/I
zeta<-matrix(rnorm(K*I,0,1),I,K)
S<-matrix(nrow=I, ncol=K)
S[1,]<-s0
for(j in 1:K)
  for(i in 2:I)
  {S[i,j]<-S[i-1,j]*exp((mi-sigma^2/2)*dt+sigma*sqrt(dt)*zeta[i,j])}
matplot(S, type="l", lty=1, pch=20)