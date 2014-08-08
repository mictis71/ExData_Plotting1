# TODO: Add comment
# 
# Author: Michael Tissot
###############################################################################


plot2 <- function(){
	plotpng <- "plot2.png"
	df<-getData()	
	## Create Histogram
	png(filename = plotpng, width = 480, height = 480)
	with(df, plot(Date, Global_active_power, type = "l", 
		ylab="Global Active Power (kilowatts)", xlab=""))
	dev.off()
}

