# TODO: Add comment
# 
# Author: Michael Tissot
###############################################################################

plot4 <- function(){
	plotpng <- "plot4.png"

	# read data
	df<-read.table("household_power_consumption.txt", header = TRUE
			, sep = ";", na.strings = c("NA", "?"))
	
	## tidy data convert & combine date & time
	df$Date <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
	
	## subset data
	from <- as.POSIXct("2007-02-01 00:00")
	to <- as.POSIXct("2007-02-03 00:00")
	df <- df[df$Date > from & df$Date < to,]
	
	## Create Histograms
	png(filename = plotpng, width = 480, height = 480)
	par(mfcol = c(2, 2))
	with(df,{
		plot(Date, Global_active_power, type = "l", xlab="",
			ylab="Global Active Power (kilowatts)")
				
		plot(Date, Sub_metering_1 , type = "l", 
			ylab="Energy sub metering", xlab="")
		lines(Date, Sub_metering_2, col="red")
		lines(Date, Sub_metering_3, col="blue")
		legend("topright", col=c("black", "red", "blue"), 
			lty = c(1,1,1),
			legend = paste(rep("Sub_metering_",3), 1:3))
				
		plot(Date, Voltage, type = "l", xlab="datetime")
		
		plot(Date, Global_reactive_power, type = "l", xlab="datetime")
		
	})
	dev.off()
	
}

