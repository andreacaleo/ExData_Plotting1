source("load_household_data.R")

png(file="plot1.png", width = 480, height = 480)
hist(reduced_data$Global_active_power, col="red", 
     xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()