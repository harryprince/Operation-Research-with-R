install.packages("sensitivity")
library(sensitivity)
?sensitivity

x<-c(1:10)
y<-c(3:12)
src(x ,y , rank=FALSE ,nboot = 1,conf = 0.95)
plot(x,ylim = c(-1,1))
