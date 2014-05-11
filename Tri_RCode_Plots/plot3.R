#create an empty plot
plot(datetime, data$Sub_metering_1, type="n", ylab="Energy sub metering")
#create each pair
lines(datetime,data$Sub_metering_1,col="red")
lines(datetime,data$Sub_metering_2,col="green")
lines(datetime,data$Sub_metering_3,col="blue")
#create legend
legend("topright", pch="-", col=c("red","green","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex=0.5)


