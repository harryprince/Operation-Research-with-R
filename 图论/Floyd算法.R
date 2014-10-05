#' find the shortest way bewteen two unfixed points
#' take in any Orient Destination matrix in this function to Floyd it.
#' @param M A OD matrix to be Floyd
#' @return Floyd M
#' @export 
##Floyd算法 是图论最短路问题3算法中经典算法之一
##完成的太仓促了 很多说明还没有时间写，希望大家一起啊
Floyd<- function(M){
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
## example: D<- matrix(c(0,2,8,1,Inf,Inf,Inf,Inf,2,0,6,Inf,1,Inf,Inf,Inf,8,6,0,7,5,1,2,Inf,1,Inf,7,0,Inf,Inf,9,Inf,Inf,1,5,Inf,0,3,Inf,8,Inf,Inf,1,Inf,3,0,4,6,Inf,Inf,2,9,Inf,4,0,3,Inf,Inf,Inf,Inf,8,6,3,0),8,8)
