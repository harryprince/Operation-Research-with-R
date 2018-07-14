##R与运筹学之求解整数规划问题（线性最大整数规划）
##运行环境 Mac 10.9.4 + R 3.1.1    (不懂可以忽略)
##以下例题引用自清华大学运筹学教编组 第三版 P76 2.10题（生产计划）
##install.packages("Rglpk")
##首次接触Rglpk包，我们需要去掉上面一行的“##”符号，安装包；
##之后，第一次跑这个程序的同学可以直接在点击菜单栏绿色的run
##程序没有bug吧，如果有bug尽快联系我
##然后加载这个包
library(Rglpk)
##正式工作##########################
##价值系数Xi向量 a numeric vector representing the objective coefficients
obj <- c(3,2,2.9)
##费用矩阵 a numeric vector or a matrix of constraint coefficients.
x1<- c(8,10,2)
x2<- c(2,5,13)
x3<- c(10,8,10)
data<- data.frame(x1,x2,x3)
data
##右侧
m=nrow(data)##约束条件个数 the numbers of constraints
##方向(大于还是小于) a character vector with the directions of the constraints. Each element must be one of "<", "<=", ">", ">=", or "==".
dir <- rep("<=",m)
##右侧B值 the right hand side of the constraints.
rhs <- c(300,400,420)   
##变量类型 "B" for binary, "C" for continuous or "I" for integer. By default NULL, taken as all-continuous. Recycled as needed.
types <- rep("C",m)## 或者"I",        
##准备求解原问题 primary problem=======
Rglpk_solve_LP(obj, data, dir, rhs, types, max = TRUE)
##运行结果running result

#$optimum
#[1] 135.2667

#$solution
#[1] 22.533333 23.200000  7.333333
#   5408/240    5568/240    1760/240
#$status
#[1] 0
