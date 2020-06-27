#read file
hpc <- read.csv("C:/Users/Tori Tori/Downloads/coursera/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";")

# set time variable
finalData <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)

#open PNG device
png(file = "Plot1.png", width = 480, height = 480, units = "px")
# plot 1
hist(finalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

