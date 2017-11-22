# Getting and Cleaning Data Course Project
 
Files:
* See the README.md file of this repository for background information on this data set.
* See the CODEBOOK.md file to see the description of the data
* run_analysis.R file contains R code to generate the tidy_data.txt file.

Steps used to clean up the data:

* Downloaded and unziped the dataset
* Combined the test data & train data into a single data frame.
* Combined the test subjects & train subjects into a single data frame.
* Combined the test activities & train activities into a single data frame.  
* Replaced the activity ID by the cctivity name
* Added the subject column and activity name column to the data frame
* Loaded the feature dataset, cleaned the names and assigned the result to the data frame column names.
* Only selected the mean and standard variation for each of the measurement
* Grouped the data by subject & activity, and calculated the average of each of the variables
* Write the results to the file "tidy_data.txt"