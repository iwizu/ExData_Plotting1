hpc <- read.csv("household_power_consumption.txt", sep=";", header=TRUE)
#Filter by dates
hpcSub <- data[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
dates <- strptime(paste(hpcSub$Date, hpcSub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalAP <- as.numeric(hpcSub$Global_active_power)

png("plot2.png", width=480, height=480)
plot(dates, globalAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

