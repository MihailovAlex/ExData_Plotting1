data_all <- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?")

data <- data_all |>
  filter(Date == "1/2/2007" | Date == "2/2/2007")

data$Date <- as.Date(data$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

plot(data$Global_active_power~data$Datetime,
     type="l",
     ylab="Global Active Power (kilowatts)",
     xlab= NA)

dev.copy(png, "plot2.png",
         width  = 480,
         height = 480)

dev.off()
