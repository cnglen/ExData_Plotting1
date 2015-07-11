## plot1.R

## Clean workspace
rm(list=ls())
library(dplyr)
library(lubridate)

## Load Data
source("./load_data.R")

## Get Figure 1: Histogram of Global Active Power
png("plot1.png", width=480, heigh=480, units="px")
hist(data_set$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()
