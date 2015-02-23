##function that gets the high CurTime consumer threads only.

getRogueConsumer<-function(filename,curTimeLimit){
  ## Read "piarchss -thread" data file, using readThreadLog funciton
  data<-readThreadLog(filename)
  
  ## Generate a data with CurTime >= specified value
  more_then<-which(as.numeric(data$CurTime)>=curTimeLimit)
  
  ## return a data.frame
  rogue_list<-data[more_then,]
  
  ##arrange with plyr
  rogue_list<<-arrange(rogue_list,desc(CurTime))
  plot(rogue_list$PointID,rogue_list$CurTime)
  ##Arranging with R Base
  ##rogue_list[order(rogue_list$CurTime,rogue_list$PointID,decreasing = TRUE),]
  ##rogue_list[with(rogue_list,order("CurTime"))]
}
