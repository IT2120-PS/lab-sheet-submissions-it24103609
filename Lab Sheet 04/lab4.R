# Question 1
setwd("C:\\Users\\it24100198\\Desktop\\IT24100198_LAB_04_PS")
branch_data <- read.csv("Exercise.txt")

print(branch_data)

# Question 3
boxplot(branch_data$Sales_X1, main="Boxplot of Sales", ylab="Sales", col="lightblue")
summary(branch_data$Sales_X1)


# Question 4
summary(branch_data$Advertising_X2)
adv_iqr <- IQR(branch_data$Advertising_X2)
print(adv_iqr)

# Question 5
find_outliers <- function(x) {
  q1 <- quantile(x, 0.25)
  q3 <- quantile(x, 0.75)
  iqr <- q3 - q1
  lower_fence <- q1 - 1.5 * iqr
  upper_fence <- q3 + 1.5 * iqr
  outliers <- x[x < lower_fence | x > upper_fence]
  if (length(outliers) == 0) {
    return("No outliers")
  } else {
    return(outliers)
  }
}

years_outliers <- find_outliers(branch_data$Years_X3)
print(years_outliers)