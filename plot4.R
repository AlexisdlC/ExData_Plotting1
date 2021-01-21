## Clear Environment

rm(list = ls())

## Load Dataset

load("selectedData.Rda")

## Plot

png(filename = "plot4.png")

par(mfrow=c(2,2))

plot(data_selectb$DateTime,data_selectb$Global_active_power, "l", col = "black",
     main ="", xlab = "", ylab = "Global Active Power")

plot(data_selectb$DateTime,data_selectb$Voltage, "l", col = "black",
     main ="", xlab = "datetime", ylab = "Voltage")

plot(data_selectb$DateTime,data_selectb$Sub_metering_1,"l", col="black",main="",
     xlab = "", ylab = "Energy sub metering", ylim= c(0,39))

lines(data_selectb$DateTime,data_selectb$Sub_metering_2,"l", col="red")

lines(data_selectb$DateTime,data_selectb$Sub_metering_3,"l",col="blue")

legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"),
       lty=1,bty="n")

plot(data_selectb$DateTime,data_selectb$Global_reactive_power, "l", col = "black",
     main ="", xlab = "datetime", ylab = "Global_reactive_power")


dev.off()