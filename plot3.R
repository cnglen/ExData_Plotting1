## plot1.R

## Clean workspace
rm(list=ls())
library(dplyr)
library(lubridate)

## Load Data
source("./load_data.R")

## Get figure3: Energy sub metering 1/2/3 ~ datetime
png("plot3.png", width=480, heigh=480, units="px")
plot(data_set$Date_time, data_set$Sub_metering_1, type="l", ylab="Energy sub meeting", xlab="", col="black")
lines(data_set$Date_time, data_set$Sub_metering_2, type="l", ylab="Energy sub meeting", xlab="", col="red")
lines(data_set$Date_time, data_set$Sub_metering_3, type="l", ylab="Energy sub meeting", xlab="", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
dev.off()
