household_data <- read.table("household_power_consumption.txt", 
                             sep = ";", comment.char = "", stringsAsFactors = F)
colnames(household_data) <- household_data[1,]
household_data <- household_data[-1,]

library(dplyr)
reduced_data <- household_data %>% filter(Date == "1/2/2007" | Date == "2/2/2007")

reduced_data[,1] <- as.Date(reduced_data[,1], "%d/%m/%Y")

for (i in 3:9)
    reduced_data[,i] <- as.numeric(reduced_data[,i])

complete_times <- as.POSIXlt(paste(reduced_data[,1], reduced_data[,2]))
reduced_data$complete_times <- complete_times