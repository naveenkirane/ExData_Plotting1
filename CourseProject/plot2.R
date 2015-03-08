plot2<-function(){
 Assignment1<-read.table("household_power_consumption.txt",sep=";",header=T,stringsAsFactors=F,na.strings="?")
Assignment1$Date<-as.Date(Assignment1$Date, format="%d/%m/%Y")
 Assignment1<-(Assignment1[Assignment1$Date=="2007-02-01"| Assignment1$Date=="2007-02-02",])
 Assignment1$datetime<-as.POSIXct(paste(Assignment1$Date,Assignment1$Time))

plot(Assignment1$datetime,Assignment1$Global_active_power,pch=".",type="l",xlab="",ylab="GlobalActive Power (Kilowatts)")

dev.copy(png,"plot2.png")
dev.off()

}