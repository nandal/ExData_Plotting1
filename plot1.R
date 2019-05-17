
# Setting Working Directory
setwd("/home/nandal/data_science/coursera/exploratory_data_analysis/week1/ExData_Plotting1")

# Reading Data
data_full <- read.csv("./exdata_data_household_power_consumption/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

# Getting Subset of Data
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))

# Formating Date
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")


# Drawing Histogram
hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")


# Saving plot to png file
dev.copy(png, file="plot1.png", height=480, width=480)

# closing device
dev.off()

