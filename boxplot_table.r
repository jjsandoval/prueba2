tdf<-read.table(text = "
type count
2     10
3      5
5      64
8      81
10      3
12      4
15      1 ", header=T)
#

expandir<-function(x){
  y<-rep(tdf[1:nrow(x),1],tdf[1:nrow(x),2])
  return(y)
}

w<-expandir(tdf)
boxplot(w, horizontal=T)
hist(w)
