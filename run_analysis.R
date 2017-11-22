# Load required libraries
library(dplyr)

if (!dir.exists("data")) {
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip")
  unzip("dataset.zip")
  file.rename("UCI HAR Dataset", "data")
  file.remove("dataset.zip")
}

#Set to -1 to get all rows, to a smaller number if you want to inspect/debug the data
max <- -1

# Load test data
test_data <- read.table("data/test/X_test.txt", nrows = max )
train_data <- read.table("data/train/X_train.txt", nrows = max )
data <- bind_rows(test_data, train_data)

# Load the activity labels
labels <- 
  read.table("data/activity_labels.txt") %>%
  rename(activityId = V1, activityName = V2)

# Combine the subjects data set
test_subjects <- read.table("data/test/subject_test.txt", nrows = max)
train_subjects <- read.table("data/train/subject_train.txt", nrows = max)
subjects <- bind_rows(test_subjects, train_subjects)

# Combine activities data set
test_activities <- 
  read.table("data/test/y_test.txt", nrows = max) %>%
  rename(activityId = V1) %>%
  left_join(labels, by = "activityId")
train_activities <- 
  read.table("data/train/y_train.txt", nrows = max) %>%
  rename(activityId = V1) %>%
  left_join(labels, by = "activityId")
activities <- bind_rows(test_activities,train_activities)

# Join all the data sets
data <- cbind(activities[,2], data)
data <- cbind(subjects, data)

# Rename the columns
features <- read.table("data/features.txt", colClasses = c("character"))
colNames <- append(c("subjectId", "activityName"), as.vector(features[,2]))
colNames <- gsub(',','',colNames)
colNames <- gsub('[-()]','',colNames)
colNames <- gsub('mean','Mean',colNames)
colNames <- gsub('std','Std',colNames)

names(data) <- colNames

# Only select the mean and standard variation for each of the measurement
var <- grepl("subjectId|activityName|Mean|Std", colNames) 
data <- data[,var]

# Group the data by subject & activity, and calculate the average of each of the variables
tidy_data <-
  data %>%
  group_by(subjectId, activityName) %>%
  summarise_all(mean)

# Write the results to a file
write.table(tidy_data, "tidy_data.txt")
