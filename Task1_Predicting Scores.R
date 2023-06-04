# THE SPARK FOUNDTAION
# Predict the percentage of an student based on the no. of study hours using supervised learning
# TASK-1
# Take data from csv file

# check your working directory
getwd()

# loading necessary libraries
library(dplyr)

#Import your data .csv file
Study_hours <= read.csv("study_hours.csv", header = TRUE, sep = ",")

# Display the first few rows of the dataset
head(Study_hours)

# Summary statistics of the dataset
summary(Study_hours)

# Structure of the dataset
str(Study_hours)

# Create a scatter plot
plot(Study_hours$Hours, Study_hours$Scores, xlab = "Study Hours", ylab = "Percentage", main = "Study Hours vs. Percentage")


# Perform linear regression
model <- lm(Scores ~ Hours, data = Study_hours)

# Get the regression summary
summary(model)


# Make predictions if a student studies for 9.25 hrs/ day?
new_data <- data.frame(Hours = 9.25)  # Create a new data frame
predicted_percentage <- predict(model, newdata = new_data)
predicted_percentage

