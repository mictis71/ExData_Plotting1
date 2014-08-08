# TODO: Produce plot1
# 
# Author: Michael Tissot
###############################################################################


plot1 <- function(){
	plotpng <- "plot1.png"
	daf<-getData()	
	## Create Histogram
	png(filename = plotpng, width = 480, height = 480)
	with(df, hist(Global_active_power, col="red",
		main="Global Active Power",
		xlab="Global Active Power (kilowatts)",
		ylab="Frequency"))
	dev.off()
}
