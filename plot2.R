## plot1.R

## Clean workspace
rm(list=ls())
library(dplyr)
library(lubridate)

## Load Data
source("./load_data.R")

## Get Figure 2: Global Active Power ~ datetime
png("plot2.png", width=480, heigh=480, units="px")
plot(data_set$Date_time, data_set$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
