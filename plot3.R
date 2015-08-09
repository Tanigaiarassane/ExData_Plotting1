#This progam populates data from file and creates a plot with different sub metering types and time lines as axes
plot3 <- function(dataset){
  # Opens the png device, creates the plot and saves it to a file
  png(filename='plot3.png',width=480,height=480,units='px')
  plot(dataset$datetime, dataset$Sub_metering_1,type="l",col="black",xlab = "",ylab="Energy Sub metering")
  lines(dataset$datetime, dataset$Sub_metering_2,type="l",col="red")
  lines(dataset$datetime, dataset$Sub_metering_3,type="l",col="blue")
  
  legend("topright",cex=0.75,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","blue","red"))
  x <- dev.off()
  
}

# main program - calls the functions to populate data and create plot.
source('read_data.R')
data <- get_and_clean_data("household_power_consumption.txt")
plot3(data)
