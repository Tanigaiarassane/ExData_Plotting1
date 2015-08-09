#This progam populates data from file and creates a plot with Global active power and time lines as axes

plot2 <- function(dataset){
# Opens the png device, creates the plot and saves it to a file
  png(filename='plot2.png',width=480,height=480,units='px')
  plot(dataset$datetime, dataset$Global_active_power,xlab="",ylab="Global Active power (Kilowatt)",type="l")
  x <- dev.off()
}

# main program - calls the functions to populate data and create plot.
source('read_data.R')
data <- get_and_clean_data("household_power_consumption.txt")
plot2(data)