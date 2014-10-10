source(load_data.R)

##create the PNG file
png(filename="plot4.png",
    width=480,
    height=480,
    bg="transparent")

##construct the plots

par(mfrow=c(2,2))

##top left 
plot(data$DateTime,
     data$Global_active_power, 
     type="l",
     xlab="",
     ylab="Global Active Power")

##top right
plot(data$DateTime,
     data$Voltage, 
     type="l",
     xlab="datetime",
     ylab="Voltage")

##bottom left
plot(data$DateTime, 
     data$Sub_metering_1, 
     type="l",
     xlab="",
     ylab="Energy sub metering")
lines(data$DateTime, 
      data$Sub_metering_2,
      col="red")
lines(data$DateTime, 
      data$Sub_metering_3,
      col="blue")
legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),
       lwd=1,
       bty="n")

##bottom right
plot(data$DateTime,
     data$Global_reactive_power, 
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power")

##close graphics device
dev.off()
