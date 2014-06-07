source("GetData.R")

Plot3<- function ()
{
  
  tbl <- GetData()
  png(filename = "plot3.png", width = 480, height = 480, units = "px")
  plot(tbl$DateTime, tbl$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")  
  lines(tbl$DateTime,tbl$Sub_metering_2,type="l",col="red")
  lines(tbl$DateTime,tbl$Sub_metering_3,type="l", col="blue")
  legend("topright",lty=1, lwd=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
  
  dev.off()
}

Plot3()