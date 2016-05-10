#Function to produce Plot2 of the assignment, saves this plot as png  in current working directory
#Calls the ReadConsumptionFile method to get and clean our data file
# Author: Walter Steenekamp
# version : 1.0
Plot2<-function(){
  myplotdf <- ReadConsumptionFile("household_power_consumption.txt")
  png("plot2.png", width=480, height=480)
  plot(myplotdf$datetime,myplotdf$Global_active_power, type = "l", ylab = "Global active Power", xlab = "")
  dev.off()
}