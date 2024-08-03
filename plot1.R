data_all <- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?")

data <- data_all |>
  filter(Date == "1/2/2007" | Date == "2/2/2007")


hist(data$Global_active_power,
     xlab = "Global Active Power (kilowatts)",
     ylab="Frequency",
     col  = "red",
     main = "Global Active Power")


dev.copy(png, "plot1.png",
         width  = 480,
         height = 480)

dev.off()
