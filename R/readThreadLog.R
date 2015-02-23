readThreadLog<-function(filename){
  library(stringr)
  library(plyr)
  library(dplyr)
  ##na_strings<-c("Subsystem: piarchss","ThreadID","PoolName","Handle","HandleHighBits","Priority","State","Calls","LastTime","CurTime","PointID",
  ##              "ConnectId","RPCName")
  columns<-c("ThreadID","PoolName","Handle","HandleHighBits","Priority","State","Calls","LastTime","CurTime","PointID","ConnectId","RPCName")
  data<-read.csv(filename,header=FALSE,sep=",",skip=2,col.names = columns,skipNul=TRUE,colClasses="character")
  
  ##Filtering data with unneccessary info
  
  filter_rows<-grep("^ Current|Subsystem: piarchss|ThreadID|PoolName|Handle|HandleHighBits|Priority|State|Calls|LastTime|CurTime|PointID|ConnectId|RPCName|Main|Message|Read",data$PoolName)
  data<-data[-c(filter_rows),]
  

}