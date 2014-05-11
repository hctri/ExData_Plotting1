#create 4 windows
par(mfrow=c(2,2))
#create plots
plot(datetime,data$Global_active_power, type="o", pch="|", cex=0.2, col="red",ylab="Global Active Power")
plot(datetime,data$Voltage, type="o", pch="|", cex=0.2, col="red",ylab="Voltage")
#create an empty plot
plot(datetime, data$Sub_metering_1, type="n", ylab="Energy sub metering")
#create each pair
lines(datetime,data$Sub_metering_1,col="red")
lines(datetime,data$Sub_metering_2,col="green")
lines(datetime,data$Sub_metering_3,col="blue")
#create legend
legend("topright", pch="-", col=c("red","green","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex=0.2)
plot(datetime,data$Global_reactive_power, type="o", pch="|", cex=0.2, col="red",ylab="Global reactive power")

