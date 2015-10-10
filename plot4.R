# set the png device
png(file = "plot4.png", width = 480, height = 480)

#create the graphic
par(mfrow = c(2,2))
plot(hpc$datetime, hpc$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
plot(hpc$datetime, hpc$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
plot(hpc$datetime, hpc$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
points(hpc$datetime, hpc$Sub_metering_1, type = "l", col = "black")
points(hpc$datetime, hpc$Sub_metering_2, type = "l", col = "red")
points(hpc$datetime, hpc$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"), bty = "n")
plot(hpc$datetime, hpc$Global_reactive_power, type = "l", ylab = "Global Reactive Power", xlab = "datetime")

#shut-down the png device
dev.off()