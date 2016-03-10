source("load_household_data.R")

png(file="plot4.png", width = 480, height = 480)

par(mfrow = c(2,2), mar=c(2,4,2,1))

plot(reduced_data$complete_times,reduced_data$Global_active_power, type = "n", 
     xlab = "", ylab="Global Active Power")
lines(reduced_data$complete_times,reduced_data$Global_active_power)

plot(reduced_data$complete_times, reduced_data$Voltage, type = "n", 
     xlab = "Voltage", ylab = "datetime")
lines(reduced_data$complete_times,reduced_data$Voltage)

plot(reduced_data$complete_times,reduced_data$Sub_metering_1, type = "n", 
     xlab = "", ylab="Energy sub metering")
lines(reduced_data$complete_times,reduced_data$Sub_metering_1, col="black")
lines(reduced_data$complete_times,reduced_data$Sub_metering_2, col="red")
lines(reduced_data$complete_times,reduced_data$Sub_metering_3, col="blue")
legend("topright", c("sub metering 1", "sub metering 2", "sub metering 3"), 
       lwd = 1, col=c("black","red","blue"))


plot(reduced_data$complete_times,reduced_data$Global_reactive_power, type = "n", 
     xlab = "", ylab="Global reactive power")
lines(reduced_data$complete_times,reduced_data$Global_reactive_power)



dev.off()