#subset Baltimore data
balti<-pollution[pollution$fips=="24510",]

#subset emissions from vehicles sources in Baltimore
onroad<-balti[balti$type=="ON-ROAD",]

#comupte total emissions for each year
b<-aggregate(onroad[,4], by = list(onroad$year),FUN=sum)

#add region label
b$region <- rep("Baltimore",nrow(b))

#subset Los Angeles data
los<-pollution[pollution$fips=="06037",]

#subset emissions from vehicles sources in Los Angeles
onroad2<-los[los$type=="ON-ROAD",]

#comupte total emissions for each year in Los Angeles
l<-aggregate(onroad2[,4],by=list(onroad2$year),FUN=sum)

#add region label
l$region <- rep("Los Angeles",nrow(l))

#combine data
comb<-rbind(l,b)

#plot data
library(ggplot2)
qplot(Group.1,x/1000,data=comb,geom="line",color= region,
      main="Emissions from vehicles in Baltimore vs LA",
      xlab="Year",ylab="Emissions(kilotons)")

#export plot
dev.copy(png,file="plot6.png",width=480,height=480)
dev.off()
