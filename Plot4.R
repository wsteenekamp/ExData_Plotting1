#Function to produce Plot4 of the assignment, saves this plot as png  in current working directory
#Calls the ReadConsumptionFile method to get and clean our data file
# Author: Walter Steenekamp
# version : 1.0
Plot4<-function(){
  myplotdf <- ReadConsumptionFile("household_power_consumption.txt")
  png("plot4.png", width=480, height=480)
  par(mfrow = c(2,2))
  plot(myplotdf$datetime,myplotdf$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
  plot(myplotdf$datetime,myplotdf$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
  plot(myplotdf$datetime,myplotdf$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
  lines(myplotdf$datetime,myplotdf$Sub_metering_3, type = "l", col = "blue")
  lines(myplotdf$datetime,myplotdf$Sub_metering_2, type = "l", col = "red")
  legend('topright',c("Sub_metering1","Sub_metering2","Sub_metering3"),lty=c(1,1),col=c('black','red','blue'))
  plot(myplotdf$datetime,myplotdf$Global_reactive_power, type = "l", ylab = "Global reactive Power", xlab = "datetime")
  dev.off()
}