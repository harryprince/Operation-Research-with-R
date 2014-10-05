##Floyd算法 是图论最短路问题3算法中经典算法之一
route<-scan()
0  1.3	2.1	0.9	0.7	1.8	2	1.5
1.3	0	0.9	1.8	1.2	2.6	2.3	1.1
2.1	0.9	0	2.6	1.7	2.5	1.9	1
0.9	1.8	2.6	0	0.7	1.6	1.5	0.9
0.7	1.2	1.7	0.7	0	0.9	1.1	0.8
1.8	2.6	2.5	1.6	0.9	0	0.6	1
2	2.3	1.9	1.5	1.1	0.6	0	0.5
1.5	1.1	1	0.9	0.8	1	0.5	0

M<-route
M
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


