## Note:
## 1. Download the zip file from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
## 2. Extract .zip to household_power_consumption.txt

## Load data
data_file <- "./household_power_consumption.txt"
data_set <- read.table(file=data_file, header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
data_set$Date <- dmy(paste(data_set$Date))
data_set <- filter(data_set, Date==ymd("2007-02-01") | Date==ymd("2007-02-02"))
data_set <- mutate(data_set, Date_time=ymd_hms(paste(Date, Time)))
data_set$Date <- NULL
data_set$Time <- NULL
