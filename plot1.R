#This progam populates data from file and creates a histogram with Global active power and time lines as axes
plot1 <- function(dataset){
  # Opens the png device, creates the plot and saves it to a file
  png(filename='plot1.png',width=480,height=480,units='px')
  hist(dataset$Global_active_power,xlab="Gloabl Active power (Kilowatts)",main = 'Global active power',col="red")
  x <- dev.off()
  
}

# main program - calls the functions to populate data and create plot.
source('read_data.R')
data <- get_and_clean_data("household_power_consumption.txt")
plot1(data)