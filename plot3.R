# TODO: Add comment
# 
# Author: Michael Tissot
###############################################################################


plot3 <- function(){
	plotpng <- "plot3.png"

	# read data
	df<-read.table("household_power_consumption.txt", header = TRUE
			, sep = ";", na.strings = c("NA", "?"))
	
	## tidy data convert & combine date & time
	df$Date <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
	
	## subset data
	from <- as.POSIXct("2007-02-01 00:00")
	to <- as.POSIXct("2007-02-03 00:00")
	df <- df[df$Date > from & df$Date < to,]
	
	## Create Histogram
	png(filename = plotpng, width = 480, height = 480)
	with(df, { 
			plot(Date, Sub_metering_1 , type = "l", 
			ylab="Energy sub metering", xlab="")
			lines(Date, Sub_metering_2, col="red")
			lines(Date, Sub_metering_3, col="blue")
			legend("topright", col=c("black", "red", "blue"),
				lty = c(1,1,1),
				legend = c("Sub_metering_1", "Sub_metering_2",
				"Sub_metering_3"))
		})
	dev.off()
}

