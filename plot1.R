hpc <- read.csv("household_power_consumption.txt", sep=";", header=TRUE)
#Filter by dates
hpcSub <- data[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
#Convert data types
hpcSub$Global_active_power <- as.numeric(hpcSub$Global_active_power)
# 1
png("plot1.png", width=480, height=480)
hist(hpcSub$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")
dev.off()
