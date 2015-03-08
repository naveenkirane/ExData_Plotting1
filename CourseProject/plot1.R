plot1<-function()
{
Assignment1<-read.table("household_power_consumption.txt",sep=";",header=T,colClasses=c(rep("character",2),rep("numeric",7)),na.strings="?")
Assignment1<-Assignment1[Assignment1$Date=="1/2/2007" | Assignment1$Date=="2/2/2007",]
hist(Assignment1$Global_active_power,col="Red",main="Global Active Power",xlab="Global Active Power (Kilo Watts)",ylab="Frequency",)
 dev.copy(png,"plot1.png")
dev.off()
}