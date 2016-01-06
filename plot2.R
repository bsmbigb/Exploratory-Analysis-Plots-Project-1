



power_cons <- read.csv(file = "C:\\Users\\massibs\\Desktop\\Coursera Data Science\\04 Exploratory Data Analysis\\household_power_consumption2.txt", header = TRUE, sep = ";", 
                       dec = ".", fill = TRUE, na.strings=".")

power_cons[is.na(power_cons)] <- 0


head(power_cons)




#Plot2.png



png(filename = "C:\\Users\\massibs\\Desktop\\Coursera Data Science\\04 Exploratory Data Analysis\\plot2.png", width = 480, height = 480,
    pointsize = 12, bg = "white")


plot(power_cons$Global_active_power, power_cons$date, type ="s", ylab="Global Active Power", xlab = ' ', xaxt='n')
axis(1,at=c(0,1500,2900),labels=c("Thu", "Fri", "Sat"))