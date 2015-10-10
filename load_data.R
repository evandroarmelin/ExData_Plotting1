# set the working directory
setwd("C:/Users/Evandro/Note_pessoal/Documentos - note pessoal/Evandro/Didáticos/Data Scientist/04. Exploratory Data Analysis/Week 1/Course Project 1")

#load the entire data set
hpc_complete <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#subset the data to to the specifiec period (from 2007-2-1 o 2007-
hpc <- subset(hpc_complete, Date %in% c("1/2/2007", "2/2/2007"))

#create datetime variable (date + time)
hpc$datetime <- strptime(paste(hpc$Date, hpc$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")

# convert strings to numbers
hpc$Global_active_power <- as.numeric(hpc$Global_active_power)
hpc$Global_reactive_power <- as.numeric(hpc$Global_reactive_power)
hpc$Voltage <- as.numeric(hpc$Voltage)
hpc$Global_intensity <- as.numeric(hpc$Global_intensity)
hpc$Sub_metering_1 <- as.numeric(hpc$Sub_metering_1)
hpc$Sub_metering_2 <- as.numeric(hpc$Sub_metering_2)