setwd("C:\\Users\\it24102919\\Desktop\\IT24102919")

#1
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")

#2
fix(branch_data)
attach(branch_data)

str(branch_data)
class(branch_data$Branch)
class(branch_data$Salary_X1)
class(branch_data$Advertising_X2)
class(branch_data$Years_X3)


#3
boxplot(branch_data$Sales_X1, main = "Boxplot for Sales", outline = TRUE, outpch = 8, horizontal = TRUE)

#4
summary(Advertising_X2)
quantile(Advertising_X2)
IQR(Advertising_X2)

#5
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.45)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR
  upper <- Q3 + 1.5 * IQR
  x[x < lower | x > upper]
}

find_outliers(Years_X3)

