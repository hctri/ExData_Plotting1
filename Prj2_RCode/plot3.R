#subset Baltimore data
balti<-pollution[pollution$fips==24510,]

library(ggplot2)
qplot(year,Emissions,data=balti,geom=c("point","smooth"),
      color=type,method="lm",ylim=c(0,10),main="Types of emissions in Baltimore",
      ylab="Emissions(tons)")

#print plot
dev.copy(png,file="plot3.png",width=480,height=480)
dev.off()
