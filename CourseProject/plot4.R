plot4<-function(){
 Assignment1<-read.table("household_power_consumption.txt",sep=";",header=T,stringsAsFactors=F,na.strings="?")
Assignment1$Date<-as.Date(Assignment1$Date, format="%d/%m/%Y")
 Assignment1<-(Assignment1[Assignment1$Date=="2007-02-01"| Assignment1$Date=="2007-02-02",])
 Assignment1$datetime<-as.POSIXct(paste(Assignment1$Date,Assignment1$Time))
par(mfrow=c(2,2))
plot(Assignment1$datetime,Assignment1$Global_active_power,pch=".",type="l",xlab="",ylab="Global Active Power (KiloWatts)")


plot(Assignment1$datetime,Assignment1$Voltage,pch=".",type="l",xlab="datetime",ylab="Voltage")


plot(Assignment1$datetime,Assignment1$Sub_metering_1,pch=".",type="l",xlab="",ylab="Energy Sub Meeting")
lines(Assignment1$datetime,Assignment1$Sub_metering_2,pch=".",type="l",col="Red")
lines(Assignment1$datetime,Assignment1$Sub_metering_3,pch=".",type="l",col="Blue")
legend("topright",pch=1,col=c("Black","Red","Blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))



plot(Assignment1$datetime,Assignment1$Global_reactive_power,pch=".",type="l",xlab="datetime",ylab="Global_reactive_power")


dev.copy(png,"plot4.png")
dev.off()

}