#Function to produce Plot3 of the assignment, saves this plot as png  in current working directory
#Calls the ReadConsumptionFile method to get and clean our data file
# Author: Walter Steenekamp
# version : 1.0
Plot3<-function(){
  myplotdf <- ReadConsumptionFile("household_power_consumption.txt")
  png("plot3.png", width=480, height=480)
  plot(myplotdf$datetime,myplotdf$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
  lines(myplotdf$datetime,myplotdf$Sub_metering_3, type = "l", col = "blue")
  lines(myplotdf$datetime,myplotdf$Sub_metering_2, type = "l", col = "red")
  legend('topright',c("Sub_metering1","Sub_metering2","Sub_metering3"),lty=c(1,1),col=c('black','red','blue'))
  dev.off()
}