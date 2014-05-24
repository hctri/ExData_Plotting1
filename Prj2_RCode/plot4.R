#subset *Coal* records, use the help of Hassan Shallal and Artem Fedosov
SCC_coal_comb <- data[grepl("coal", data$SCC.Level.Three, ignore.case=TRUE) |
                grepl("Lignite", data$SCC.Level.Three, ignore.case=TRUE),]

#extract coal data
coaldata <- subset(pollution, SCC %in% SCC_coal_comb$SCC)

#compute total emissions for each year
totalemis<-aggregate(coaldata[,4],by=list(coaldata$year),FUN=sum)

#plot data
library(ggplot2)
qplot(Group.1,x/1000,data=totalemis,geom="line",
     xlab="Year", ylab="Total emissions from PM2.5 (kilotons)",
     main="Emissions from coal combustion-related sources")

#export plot
dev.copy(png,file="plot4.png",width=480,height=480)
dev.off()
