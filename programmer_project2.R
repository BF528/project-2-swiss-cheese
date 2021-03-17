data<-read.table('genes.fpkm_tracking')#reads entire normalized file
colu<-unlist(data["V10"])#gets expression column
count<-c()#finds index of row with 0 values
numerical<-c()#for numerical translation
for(i in 2:length(colu)){#skips initial title in column
  numerical<-append(numerical,as.numeric(colu[i]))#gets numerical FPKM
  if(colu[i]==0){count<-append(count,i)}#finds index values for FPKM=0
}
h<-hist(numerical,border="blue",col='green',breaks=1000000, xlim=c(0,10))
c<-hist(numerical,border="blue",col='green',breaks=1000000, main="Histogram of FPKM Frequency",xlab='FPKM Values', xlim=c(0,100),ylim=c(0,5000))

write.csv(numerical,'numerical.csv')
