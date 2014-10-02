number<-matrix(c(10,17,11,10,5,10,8,10,9,11,10,5,12,10,9,6,14,9,6,8),5,4)
temp<-rbind(number,apply(number,2,sum))
transportationCapability<-cbind(temp,apply(temp,1,sum))
TCap<-transportationCapability
expense<- matrix(c(4.2,7.5,8.4,9.2,4.8,6.7,9,9.7,4.1,7,8,9.8,4,6.4,9.2,9.5,6.3,7,7.8,9.8),5,4)
cost<- t(matrix(rep(rep(c(2:5)),5),4,5))
revenue<-expense-cost
##运输矩阵
TC<-rbind(cbind(revenue,TCap[dim(TCap)[2],]),TCap[dim(TCap)[1],]) 
colnames(TC)<-c("p1","p2","p3","p4","Sum")
rownames(TC)<- c("local","district","domestic","Asia","International","Sum")
TC
