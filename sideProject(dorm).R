a=array(rep(NA,3*4*10),c(3,4,10))
inside=rnorm(8,0,1)
length(inside)
inside

a_with_stuff=lapply(seq(1,10),function(x) a[,,x][1:8]=rnorm(8,0,1))

a_with_stuff=apply(a,c(1,2),function(x) x)

for(i in 1:dim(a)[3]){
  a[,,i][1:8]=rnorm(8,10,20)
}


image(a[,,10])

range(a,na.rm = T)

hist(a,na.rm = T)

length(a)
length(a[a<10])

#列出10個T/F矩陣 
lapply(seq(1,10),function(x) a[,,x]<10)

#tel_mat_10=lapply(seq(1,10),function(x) a[,,x]<10)

tel_mat_10=apply(a,c(2,3),function(x) x<10) 
#維度選c(2,3) 則T/F矩陣和a一樣
dim(tel_tt)

#小於某得的次數
total_case_tt1=apply(tel_mat_10,c(1,2),sum)


#total_case_tt2=

#第三維度的相減  1的出現代表符合值出現 -1代表符合值結束 
diff_test=apply(tel_mat_10,c(1,2),diff)
dim(diff_test)
diff_test[,1,1]

#第二層的相館 -1代表 1 0 代表第一層 符合值接著出現 符合值結束退策會出現 第一層 1 0  所以第二層會是-1
diff_2_test=apply(diff_test,c(2,3),diff)
dim(diff_2_test)
diff_2_test[,1,1]

#T/F 研究
tel_mat_10[1,1,]

diff(tel_mat_10[1,1,])
diff(cumsum(tel_mat_10[1,1,]))

diff(diff(tel_mat_10[1,1,]))


b=array(rep(NA,3*4*50),c(3,4,50))
for(i in 1:dim(b)[3]){
  b[,,i][1:8]=rnorm(8,10,20)
}
tel_mat_50=apply(b,c(2,3),function(x) x<10) 
dim(tel_mat_50)

to_plt=cumsum(tel_mat_50[1,1,])
plot(x=seq(1,length(to_plt)),y=to_plt,ty="l")

diff_cumsum=diff(to_plt)
lines(x=seq(1,length(diff_cumsum)),y=diff_cumsum,col="blue")

plot(x=seq(1,length(diff_cumsum)),y=diff_cumsum,col="blue",ty="l",ylim=c(-5,5))
lines(x=seq(1,length(tel_mat_50[1,1,])),y=tel_mat_50[1,1,],lwd=3)


diff_diff=diff(diff(tel_mat_50[1,1,]))
lines(x=seq(1,length(diff_diff)),y=diff_diff,col="red")


diff(to_plt)
diff(tel_mat_50[1,1,])

dim(tel_mat_10)

tel_mat_10[,,1]

image(total_case_tt1)
image(total_case_tt2)

apply(a,c(1,2),function(x) x)




#檢視第二層的維度
diff_2_test
dim(diff_2_test)
which(diff_2_test==-1,arr.ind = T)

diff_2_test[,1,1]

diff_2_test[,2,1]


rowMeans(apply(diff_2_test,c(1),function(x) x))
