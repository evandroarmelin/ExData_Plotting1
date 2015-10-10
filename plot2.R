# set the png device
png(file = "plot2.png", width = 480, height = 480)

#create the graphic
plot(hpc$datetime, hpc$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

#shut-down the png device
dev.off()