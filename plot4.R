

power_cons <- read.csv(file = "C:\\Users\\massibs\\Desktop\\Coursera Data Science\\04 Exploratory Data Analysis\\household_power_consumption2.txt", header = TRUE, sep = ";", 
                       dec = ".", fill = TRUE, na.strings=".")

power_cons[is.na(power_cons)] <- 0


head(power_cons)





#Plot4





png(filename = "C:\\Users\\massibs\\Desktop\\Coursera Data Science\\04 Exploratory Data Analysis\\plot4.png", width = 480, height = 480,
    pointsize = 12, bg = "white")



plot(power_cons$Global_reactive_power,    col="black" ,   type = 's', xlab="datetime", ylab="global_reactive_power"  ,xaxt='n'  )
axis(1,at=c(0,1500,2900),labels=c("Thu", "Fri", "Sat"))







echo # Exploratory-Analysis-Plots-Project-1 >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/bsmbigb/Exploratory-Analysis-Plots-Project-1.git
git push -u origin master