## Clear Environment

rm(list = ls())

## Load Dataset

load("selectedData.Rda")

## Plot

png(filename = "plot3.png")

plot(data_selectb$DateTime,data_selectb$Sub_metering_1,"l", col="black",main="",
     xlab = "", ylab = "Energy sub metering")

lines(data_selectb$DateTime,data_selectb$Sub_metering_2,"l", col="red")

lines(data_selectb$DateTime,data_selectb$Sub_metering_3,"l",col="blue")

legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"),lty=1)

dev.off()