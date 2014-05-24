#subset Baltimore data
balti<-pollution[pollution$fips==24510,]

#subset emissions from vehicles sources
onroad<-balti[balti$type=="ON-ROAD",]

#comupte total emissions for each year
com<-aggregate(onroad[,4], by = list(onroad$year),FUN=sum)

#plot data
library(ggplot2)
qplot(Group.1,x,data=com,geom="line",
      main="Emissions from vehicles in Baltimore",
      xlab="year",ylab="Emissions(tons)")

#export plot
dev.copy(png,file="plot5.png",width=480,height=480)
dev.off()
