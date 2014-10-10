source(load_data.R)

##create the PNG file
png(filename="plot2.png",
    width=480,
    height=480,
    bg="transparent")

##construct the plot
plot(data$DateTime,
     data$Global_active_power, 
     type="l",
     xlab="",
     ylab="Global Active Power(kilowatts)")

##close graphics device
dev.off()
