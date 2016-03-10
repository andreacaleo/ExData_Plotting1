source("load_household_data.R")

png(file="plot2.png", width = 480, height = 480)
plot(reduced_data$complete_times,reduced_data$Global_active_power, type = "n", 
     xlab = "", ylab="Global Active Power (kilowatts)")
lines(reduced_data$complete_times,reduced_data$Global_active_power)
dev.off()