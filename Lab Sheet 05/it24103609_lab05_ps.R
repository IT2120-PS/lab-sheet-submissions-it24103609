getwd()
setwd("C:\\Users\\it24100198\\Desktop\\IT24100198_LAB_05_PS")
getwd()

#Que1
data<-read.table("Exercise - Lab 05.txt",header = TRUE,sep = ",")
Delivery_Times <- data
print(Delivery_Times)

names(Delivery_Times)<-c("X")
fix(Delivery_Times)

attach(Delivery_Times)

#Que2
hist(X,main="Histogram of delivery times")
histrogam<-histhist(X,main="Histogram of delivery times",breaks <- seq(20, 70, length= 10), right=FALSE)

#Que4
hist_data <- hist(X, breaks = breaks, plot = FALSE, right = FALSE)
cum_freq <- cumsum(hist_data$counts)

ogive_x <- breaks
ogive_y <- c(0, cum_freq)

plot(ogive_x, ogive_y, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency",
     col = "red")








