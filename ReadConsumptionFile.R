#This  is a function that get household consumption data froma csv file and cleans the data for easier plotting later
# Author : Walter Steenekamp
# Version : 1.1

ReadConsumptionFile<-function(filepathname)
{
#read consumption csv file
consumptionDF <- read.csv(file=filepathname,sep=";",header=TRUE, colClasses=c("character", "character", rep("numeric",7)), na="?")

#do some data manipuulation, change to  easier formats and filter the the two doays we are going to plot against, add datetime of type posixct which is going to be easy
#to use for plotting, labels on axis etc
consumptionDF <- consumptionDF %>% mutate(Date = as.Date(Date,format = "%d/%m/%Y")) 

consumptionDF <- consumptionDF %>% filter(Date >=  "2007-02-01", Date <= "2007-02-02") %>% mutate(datetime = as.POSIXct(paste(Date,Time), format = "%Y-%m-%d %H:%M:%S"))
}
