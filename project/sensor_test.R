rm(list=ls())
sensor = read.table("sensor_id.txt")
number_2017 = rep(NA,495);number_2018 = rep(NA,495)
mean_2017 = rep(NA,495);mean_2018 = rep(NA,495)
lon = rep(NA,495);lat = rep(NA,495)
id = rep(NA,495)
p_value = rep(NA,495)
t_statistic = rep(NA,495)
for(i in 1:495){
  p2017 = try(read.csv(paste0("./sensor_year/",sensor$V1[i],"_2017.csv")),
              silent = TRUE)
  if ('try-error' %in% class(p2017)) next
  p2018 = try(read.csv(paste0("./sensor_year/",sensor$V1[i],"_2018.csv")),
              silent = TRUE)
  if ('try-error' %in% class(p2018)) next
  id[i] = sensor$V1[i]
  p2017=p2017[!is.na(p2017$X),]
  p2018=p2018[!is.na(p2018$X),]
  number_2017[i] = dim(p2017)[1]
  number_2018[i] = dim(p2018)[1]
  lon[i] = as.character(p2017$lon[1])
  lat[i] = as.character(p2017$lat[1])
  t_test=t.test(as.numeric(as.character(p2017$P2)),as.numeric(as.character(p2018$P2)))
  p_value[i] = t_test$p.value
  mean_2017[i]=as.numeric(t_test$estimate[1])
  mean_2018[i]=as.numeric(t_test$estimate[2])
  t_statistic[i]=t_test$statistic
}
df = data.frame(id,lon,lat,number_2017,mean_2017,number_2018,
                mean_2018,p_value,t_statistic)
write.csv(df,"p2_test.csv",row.names = FALSE)


