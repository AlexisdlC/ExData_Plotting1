## Clear Environment

rm(list = ls())

## Load Dataset

load("selectedData.Rda")

## Plot

png(filename = "plot2.png")

plot(data_selectb$DateTime,data_selectb$Global_active_power,"l",main="",
     xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()