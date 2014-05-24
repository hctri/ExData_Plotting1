#read data
pollution<-readRDS("summarySCC_PM25.rds")

#total PM2.5 emission from all sources 
#in 1999, 2002, 2005, and 2008
sub<-aggregate(pollution[,c(4,6)], by = list(pollution$year),FUN=sum)

#plot data
plot(Emissions~Group.1,data=sub,type="l",lwd=2,lty=1,col="red",
     xlab="Year", ylab="Total emissions from PM2.5 (tons)",
     main="Total emissions in US from 1999 to 2008")
#export plot
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()
