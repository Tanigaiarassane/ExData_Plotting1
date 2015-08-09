#This progam populates data from file and creates 4 plot in 2x2 pattern
plot4 <- function(dataset){
  # Opens the png device, creates the plot and saves it to a file
  png(filename='plot4.png',width=480,height=480,units='px')
  
  #creating 2x3 canvass
  par(mfrow=c(2,2))
  
  #plotting Global active power
  plot(dataset$datetime, dataset$Global_active_power,xlab="",ylab="Global Active power (Kilowatt)",type="l")

  #Plotting voltage
  plot(dataset$datetime, dataset$Voltage,xlab="Date time",ylab="Voltage",type="l")
  
  #Plotting submeterings
  lncol<-c('black','red','blue')
  lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
  plot(dataset$datetime, dataset$Sub_metering_1,type="l",col="black",xlab = "",ylab="Energy Sub metering")
  lines(dataset$datetime, dataset$Sub_metering_2,type="l",col="red")
  lines(dataset$datetime, dataset$Sub_metering_3,type="l",col="blue")
  legend('topright',cex = 0.40,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","blue","red"))
  
  #Plotting global reactive power
  plot(dataset$datetime, dataset$Global_reactive_power,xlab="Date time",ylab="Global Active power (Kilowatt)",type="l")
  
  x <- dev.off()
}

# main program - calls the functions to populate data and create plot.
source('read_data.R')
data <- get_and_clean_data("household_power_consumption.txt")
plot4(data)