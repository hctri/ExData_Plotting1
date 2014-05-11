#paste Date and Time
com <- paste(data$Date,data$Time)
#convert to datetime
datetime <- strptime(com,format="%d/%m/%Y %H:%M:%S")
#plot
plot(datetime,data$Global_active_power, type="o", pch="|", cex=0.2, col="red",ylab="Global Active Power (kilowatts)")