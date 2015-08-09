# Function to download the file and populate power consumption data
get_and_clean_data <- function(filename){
  #download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","./household_power_consumption.zip",method="curl")
  unzip('household_power_consumption.zip',overwrite=TRUE)
  coldatatype=c(rep('character',2),rep('numeric',7)) 
  powerdata <- read.table('household_power_consumption.txt',header=TRUE, sep=';',na.strings='?',colClasses=coldatatype)
  powerdata_date_queried <- powerdata[powerdata$Date == '1/2/2007' | powerdata$Date == '2/2/2007',]
  powerdata_date_queried$datetime <- dmy(powerdata_date_queried$Date)+hms(powerdata_date_queried$Time)
  powerdata_date_queried
  
}