

power_cons <- read.csv(file = "C:\\Users\\massibs\\Desktop\\Coursera Data Science\\04 Exploratory Data Analysis\\household_power_consumption2.txt", header = TRUE, sep = ";", 
                       dec = ".", fill = TRUE, na.strings=".")

power_cons[is.na(power_cons)] <- 0


head(power_cons)





#Plot1




png(filename = "C:\\Users\\massibs\\Desktop\\Coursera Data Science\\04 Exploratory Data Analysis\\plot1.png", width = 480, height = 480,
    pointsize = 12, bg = "white")

hist(power_cons$Global_active_power,    col="red" ,  main="Global Active Power",   xlab="Global Active Power (kilowatts)"   )