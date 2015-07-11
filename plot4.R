## plot1.R

## Clean workspace
rm(list=ls())
library(dplyr)
library(lubridate)

## Load Data
source("./load_data.R")

## Get figure4: {Global Acitive Power, Voltage,  Energy sub metering 1/2/3, Global reactive power} ~ datetime
png("plot4.png", width=480, heigh=480, units="px")
par(mfrow=c(2, 2))
with(data_set, {
         plot(Date_time, Global_active_power, type="l", ylab="Global Active Power", xlab="")
         plot(Date_time, Voltage, type="l", xlab="datetime")
         plot(Date_time, Sub_metering_1, type="l", ylab="Energy sub meeting", xlab="", col="black")
         lines(Date_time, Sub_metering_2, type="l", ylab="Energy sub meeting", col="red")
         lines(Date_time, Sub_metering_3, type="l", ylab="Energy sub meeting", col="blue")
         legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
         plot(Date_time, Global_reactive_power, type="l", xlab="datetime")
     })
dev.off()
