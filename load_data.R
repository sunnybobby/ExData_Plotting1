## This file loads the data
## assume that the "household_power_consumption.txt" 
## file is already in the current working directory

library(data.table)

## read the dataset
data<-fread("H:/Download/R/household_power_consumption.txt", colClasses="character")

## subset the data 
data<-data[Date %in% c("1/2/2007","2/2/2007")]

## convert the Date and Time variables and classes of other varibles 
data$DateTime             <-as.POSIXct(paste(data$Date,data$Time),
                                       format="%d/%m/%Y %H:%M:%S")
data$Global_active_power  <-as.numeric(data$Global_active_power)
data$Global_reactive_power<-as.numeric(data$Global_reactive_power)
data$Voltage              <-as.numeric(data$Voltage)
data$Sub_metering_1       <-as.numeric(data$Sub_metering_1)
data$Sub_metering_2       <-as.numeric(data$Sub_metering_2)
data$Sub_metering_3       <-as.numeric(data$Sub_metering_3)
