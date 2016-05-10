#Function to produce Plot1 of the assignment, saves this plot as png  in current working directory
#Calls the ReadConsumptionFile method to get and clean our data file
# Author: Walter Steenekamp
# version : 1.0
Plot1<-function(){
  myplotdf <- ReadConsumptionFile("household_power_consumption.txt")
  png("plot1.png", width=480, height=480)
  hist(myplotdf$Global_active_power,col="red", main="Global Active Power",
       xlab="Global Active Power (kilowatts)")
  dev.off()
}