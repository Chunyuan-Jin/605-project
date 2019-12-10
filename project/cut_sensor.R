args <- commandArgs(TRUE)
filename = args[1]
test=read.csv(filename)
time0=unlist(strsplit(filename,"_"))[1]
sensor=test$sensor_id[!duplicated(test$sensor_id)]
for(i in 1:length(sensor)){
  output = test[which(test[,2]==sensor[i]),]
  write.csv(output[,c(2,4,5,8)],file=paste0("./data/",sensor[i],"_",time0,".csv"))
}
