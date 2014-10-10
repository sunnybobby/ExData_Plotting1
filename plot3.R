source(load_data.R)

##create the PNG file
png(filename="plot3.png",
    width=480,
    height=480,
    bg="transparent")

##construct the plot
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
       lwd=1)

##close graphics device
dev.off()
