hpc <- read.csv("household_power_consumption.txt", sep=";", header=TRUE)
#Filter by dates
hpcSub <- data[hpc$Date %in% c("1/2/2007","2/2/2007") ,]
dates <- strptime(paste(hpcSub$Date, hpcSub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Sub_metering_1 <- as.numeric(hpcSub$Sub_metering_1)
Sub_metering_2 <- as.numeric(hpcSub$Sub_metering_2)
Sub_metering_3 <- as.numeric(hpcSub$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(dates,Sub_metering_1 , type="n", ylab="Energy sub metering")
lines(dates,Sub_metering_1, col="black" )
lines(dates,Sub_metering_2, col="red" )
lines(dates,Sub_metering_3, col="blue" )
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"))
dev.off()

