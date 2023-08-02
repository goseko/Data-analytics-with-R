install.packages(c("readxl", "tidyverse", "tidyr", "tibble", "readmet"))

data(iris)
is_iris_dataframe <- is.data.frame(iris)
lastRows <- tail(iris)
print(lastRows)

avgSepalLength <- tapply(iris$Sepal.Length, iris$Species, mean)
print(avgSepalLength)

maxPetalWidth <- tapply(iris$Petal.Width, iris$Species, max)
print(maxPetalWidth)

Netflix

data <- readxl::read_excel("C:/Users/bkmurunga/Downloads/Netflix Userbase.xlsx")
View(data)

names(data)[2] <- "subscriptionType"


mean_monthly_revenue <- mean(data$monthlyRevenue, na.rm = TRUE)
print(mean_monthly_revenue)

ages <- data$Age
Q1 <- quantile(ages, 0.25, na.rm = TRUE)
Q3 <- quantile(ages, 0.75, na.rm = TRUE)
IQR <- Q3 - Q1
print(IQR)

correlation <- cor(data$monthlyRevenue, data$Age)
print(correlation)

load(dplyr)

filtered_data <- data %>%
  filter(subscriptionType == "Premium" & Age >= 25 & Age <= 40)
View(filtered_data)


wide_data <- data %>%
  pivot_wider(
    id_cols = "userId",         
    names_from = "subscriptionType",
    values_from = "Age"
  )