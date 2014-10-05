##Floyd算法 是图论最短路问题3算法中经典算法之一
function(M){
    M初始<- M
    M初始
n= nrow(M)
for(k in 1:n){
  T<-M[-k,-k]##去掉不动的行列后剩下的矩阵
  TestCol<- M[,k][-k]
  TestRow<- M[k,][-k]
  for(i in 1:n-1){
    for(j in 1:n-1){
      TestResult<-TestCol[i]+TestRow[j]##检验结果
      ##下面的if语句块有点恶心，R中有类似switch函数的解决方案吗？
      if(i>=k){
        if(j>=k){
          M[i+1,j+1]<-min(TestResult,T[i,j])##比较得到最小结果 
        }
        else{
          M[i+1,j]<-min(TestResult,T[i,j])##比较得到最小结果
        }
      }
      else{
        if(j>=k){
          M[i,j+1]<-min(TestResult,T[i,j])##比较得到最小结果
        }
        else{
          M[i,j]<-min(TestResult,T[i,j])##比较得到最小结果
        }
      }
    }     
  }
  
}
M最终<- M
M最终
}
