

power_cons <- read.csv(file = "C:\\Users\\massibs\\Desktop\\Coursera Data Science\\04 Exploratory Data Analysis\\household_power_consumption2.txt", header = TRUE, sep = ";", 
                       dec = ".", fill = TRUE, na.strings=".")

power_cons[is.na(power_cons)] <- 0


head(power_cons)





#Plot3


png(filename = "C:\\Users\\massibs\\Desktop\\Coursera Data Science\\04 Exploratory Data Analysis\\plot3.png", width = 480, height = 480,
    pointsize = 12, bg = "white")



plot(power_cons$Sub_metering_3, power_cons$date, type ="s", ylab="Energy sub metering", xlab = ' ', ylim=range(c(0,10,20,30)), col='blue', xaxt='n')
axis(1,at=c(0,1500,2900),labels=c("Thu", "Fri", "Sat"))

lines(power_cons$Sub_metering_2, power_cons$date, col = 'red')
lines(power_cons$Sub_metering_1, power_cons$date, col = 'black')

legend('topright',legend= c("Sub_metering_1"  , "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty=1:1 )