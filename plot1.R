# set the png device
png(file = "plot1.png", width = 480, height = 480)

#create the graphic
hist(hpc$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

#shut-down the png device
dev.off()