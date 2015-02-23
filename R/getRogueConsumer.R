##function that gets the high CurTime consumer threads only.

getRogueConsumer<-function(filename,curTimeLimit){
  ## Read "piarchss -thread" data file, using readThreadLog funciton
  data<-readThreadLog(filename)
  
  ## Generate a data with CurTime >= specified value
  more_then<-which(as.numeric(data$CurTime)>=curTimeLimit)
  
  ## return a data.frame
  rogue_list<-data[more_then,]
  rogue_list$CurTime<-as.numeric(rogue_list$CurTime)
  rogue_list<-tbl_df(rogue_list)
  rogue_list%>%
    select(PointID,CurTime,ConnectId,State,PoolName)%>%
    arrange(desc(CurTime),ConnectId)%>%
    print
  
  ##Plotting currently brings error when curTimeLimit is greater then max, need to fix
  ##plot(rogue_list$PointID,rogue_list$CurTime)
}
