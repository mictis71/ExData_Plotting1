# TODO: Produce plot1
# 
# Author: Michael Tissot
###############################################################################


plot1 <- function(){
	plotpng <- "plot1.png"
	
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
	with(df, hist(Global_active_power, col="red",
		main="Global Active Power",
		xlab="Global Active Power (kilowatts)",
		ylab="Frequency"))
	dev.off()
}
