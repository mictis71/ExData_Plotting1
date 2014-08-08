# TODO: Produce plot1
# 
# Author: Michael Tissot
###############################################################################


plot1 <- function(){
	plot1png <- "plot1.png"
	data<-getData()	
	## Create Histogram
	png(filename = plot1png, width = 480, height = 480)
	with(data, hist(Global_active_power, col="red",
		main="Global Active Power",
		xlab="Global Active Power (kilowatts)",
		ylab="Frequency"))
	dev.off()
}
