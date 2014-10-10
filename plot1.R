source(load_data.R)

##create the PNG file
png(filename="plot1.png",
    width=480,
    height=480,
    bg="transparent")

##construct the plot
hist(data$Global_active_power, 
     col="red",
     main="Global Active Power",
     xlab="Global Active Power(kilowatts)",
     ylab="Frequency",
     ylim=c(0,1200))

##close graphics device
dev.off()
