# TODO: read, tidy and subset data
#  returns data.frame
# Author: Michael Tissot
###############################################################################

getData <- function(){
	## read data
	data<-read.table("household_power_consumption.txt", header = TRUE
			, sep = ";", na.strings = c("NA", "?"))
	
	## tidy data convert & combine date & time
	data$Date <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

	## subset data
	from <- as.POSIXct("2007-02-01 00:00")
	to <- as.POSIXct("2007-02-03 00:00")
	data <- data[data$Date > from & data$Date < to,]
	
	return(data)
}


