# TODO: Produce plot1
# 
# Author: Michael Tissot
###############################################################################


plot1 <- function(){
	
	## read data
	data<-read.table("household_power_consumption.txt", header = TRUE, sep = ";")

	## tidy data
	## convert & combine date & time
	data$Date <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
	## subset data
	data <- data[data$Date >= as.POSIXct("2007-02-01") & data$Date <= as.POSIXct("2007-02-02"),]
	
	
	## Create Histogram
	with(data, hist(as.numeric(Global_active_power)/1000, col="red", 
		main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency"))

	## 
	dev.copy(png, filename = "plot1.png", width = 480, height = 480, units = "px", bg = "white")

}
