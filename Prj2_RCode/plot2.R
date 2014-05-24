#subset Baltimore data
baltimore<-pollution[pollution$fips==24510,c(1,4,6)]

#total emissions from PM2.5 in the Baltimore City by year
sub2<-aggregate(baltimore[,2:3], by = list(baltimore$year),FUN=sum)

#plot data
plot(Emissions~Group.1,data=sub2,type="l",lwd=2,lty=1,col="green",
     xlab="Year", ylab="Total emissions from PM2.5 (tons)",
     main="Total emissions in Baltimore from 1999 to 2008")
#export plot
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()

