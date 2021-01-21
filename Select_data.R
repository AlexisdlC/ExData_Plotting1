## Clear Environment

rm(list = ls())

## Load Dataset

data <- read.table("household_power_consumption.txt", sep = ";", skip = 1)
cnames <- read.table("household_power_consumption.txt", sep = ";", nrows = 1)
names(data) <- cnames




data$Date <- as.Date(data$Date, tryFormats = "%d/%m/%Y")
data$Global_active_power <- as.numeric(data$Global_active_power)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
data$Voltage <- as.numeric(data$Voltage)
data$Global_intensity <- as.numeric(data$Global_intensity)
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)

date_test <- ((data$Date < as.Date("03/02/2007", tryFormats = "%d/%m/%Y")) & (data$Date > as.Date("31/01/2007", tryFormats = "%d/%m/%Y")))

data_select <- data[date_test,]

data_select$DateTime <- paste(data_select$Date,data_select$Time)
data_select$DateTime <- as.POSIXct(data_select$DateTime)
data_selectb <- data_select[,c(3,4,5,6,7,8,9,10)]

save(data_selectb,file = "selectedData.Rda")
