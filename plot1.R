## Clear Environment

rm(list = ls())

## Load Dataset

load("selectedData.Rda")

GAP <- data_selectb$Global_active_power

## Plot

png(filename = "plot1.png")


hist(GAP, ylim = c(0,1200), col = 'red',main="Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

dev.off()