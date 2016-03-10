source("load_household_data.R")

png(file="plot3.png", width = 480, height = 480)

plot(reduced_data$complete_times,reduced_data$Sub_metering_1, type = "n", 
     xlab = "", ylab="Energy sub metering")
lines(reduced_data$complete_times,reduced_data$Sub_metering_1, col="black")
lines(reduced_data$complete_times,reduced_data$Sub_metering_2, col="red")
lines(reduced_data$complete_times,reduced_data$Sub_metering_3, col="blue")
legend("topright", c("sub metering 1", "sub metering 2", "sub metering 3"), 
       lwd = 1, col=c("black","red","blue"))

dev.off()

