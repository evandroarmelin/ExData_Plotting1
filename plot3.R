# set the png device
png(file = "plot3.png", width = 480, height = 480)

#create the graphic
plot(hpc$datetime, hpc$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
points(hpc$datetime, hpc$Sub_metering_1, type = "l", col = "black")
points(hpc$datetime, hpc$Sub_metering_2, type = "l", col = "red")
points(hpc$datetime, hpc$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"))

#shut-down the png device
dev.off()