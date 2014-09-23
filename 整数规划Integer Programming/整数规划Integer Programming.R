##R与运筹学之求解整数规划问题（线性最大整数规划）

##install.packages("Rglpk")
##首先我们需要安装并且加载这个包
library(Rglpk)
##正式工作##########################
obj <- c(10, 2, 4,5)
##最优系数Xi向量 a numeric vector representing the objective coefficients
x1<- c(-1,0,1,5)
x2<- c(3,2,4,-3)
x3<- c(1,5,-3,2)
x4<- c(2,3,4,2)
data<- data.frame(x1,x2,x3,x4)
data
##费用矩阵 a numeric vector or a matrix of constraint coefficients.
 dir <- rep("<=", 4)
##方向(大于还是小于) a character vector with the directions of the constraints. Each element must be one of "<", "<=", ">", ">=", or "==".
 rhs <- c(4, 2, 3,6)   
##B值 the right hand side of the constraints.
 types <- c("I", "C", "I","I")        
##变量类型 "B" for binary, "C" for continuous or "I" for integer. By default NULL, taken as all-continuous. Recycled as needed.
 Rglpk_solve_LP(obj, data, dir, rhs, types, max = TRUE)
##Rgplk_solve_LP(Object,Matrix,Direction,RightHandSide,MaximunOrMinimun)
##运行结果running result

#$optimum
#[1] 16.24161

#$solution
#[1] 1.4429530 0.5302013 0.1879195 0.0000000

#$status
#[1] 0
