# TODO: Produce plot1
# 
# Author: Michael Tissot
###############################################################################


plot1 <- function(){
	
	data<-getData()	
	## Create Histogram
	with(data, hist(Global_active_power, col="red",
		main="Global Active Power",
		xlab="Global Active Power (kilowatts)",
		ylab="Frequency"))

	## 
	#	dev.copy(png, filename = "plot1.png", width = 480, height = 480, units = "px", bg = "white")

}
