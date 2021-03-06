#Plot 1
#Reading, naming and subsetting power consumption data
energy <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(energy) <- c("Date","Time","Global_active_power",
                   "Global_reactive_power","Voltage",
                   "Global_intensity","Sub_metering_1",
                   "Sub_metering_2","Sub_metering_3")
subenergy <- subset(energy,energy$Date=="1/2/2007" | energy$Date =="2/2/2007")

#calling the basic plot function
hist(as.numeric(as.character(subenergy$Global_active_power)),
     col="red",
     main="Global Active Power",
     xlab="Global Active Power(kilowatts)")







