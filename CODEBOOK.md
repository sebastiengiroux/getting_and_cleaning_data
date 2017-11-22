# Code book for Coursera Getting and Cleaning Data course project

The data set that this code book pertains to is located in the tidy_data.txt file of this repository.

See the README.md file of this repository for background information on this data set.

The tidy_data.txt data file is a text file, containing space-separated values.


## Variables

Each row contains, for a given subject and activity, 79 averaged signal measurements.

* Subject identifier, integer, ranges from 1 to 30.

* Activity identifier, string with 6 possible values:

    + WALKING: subject was walking
    + WALKING_UPSTAIRS: subject was walking upstairs
    + WALKING_DOWNSTAIRS: subject was walking downstairs
    + SITTING: subject was sitting
    + STANDING: subject was standing
    + LAYING: subject was laying

* For each of the observation, the average and standard deviation measurement of the following items are provided.  For more information, please visit [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

    + tBodyAccMeanX 
    + tBodyAccMeanY 
    + tBodyAccMeanZ
    + tBodyAccStdX 
    + tBodyAccStdY 
    + tBodyAccStdZ 
    + tGravityAccMeanX 
    + tGravityAccMeanY 
    + tGravityAccMeanZ 
    + tGravityAccStdX
    + tGravityAccStdY
    + tGravityAccStdZ
    + tBodyAccJerkMeanX
    + tBodyAccJerkMeanY
    + tBodyAccJerkMeanZ
    + tBodyAccJerkStdX
    + tBodyAccJerkStdY
    + tBodyAccJerkStdZ
    + tBodyGyroMeanX
    + tBodyGyroMeanY
    + tBodyGyroMeanZ
    + tBodyGyroStdX
    + tBodyGyroStdY
    + tBodyGyroStdZ
    + tBodyGyroJerkMeanX
    + tBodyGyroJerkMeanY
    + tBodyGyroJerkMeanZ
    + tBodyGyroJerkStdX
    + tBodyGyroJerkStdY
    + tBodyGyroJerkStdZ
    + tBodyAccMagMean
    + tBodyAccMagStd
    + tGravityAccMagMean
    + tGravityAccMagStd
    + tBodyAccJerkMagMean
    + tBodyAccJerkMagStd
    + tBodyGyroMagMean
    + tBodyGyroMagStd
    + tBodyGyroJerkMagMean
    + tBodyGyroJerkMagStd
    + fBodyAccMeanX
    + fBodyAccMeanY
    + fBodyAccMeanZ
    + fBodyAccStdX
    + fBodyAccStdY
    + fBodyAccStdZ
    + fBodyAccMeanFreqX
    + fBodyAccMeanFreqY
    + fBodyAccMeanFreqZ
    + fBodyAccJerkMeanX
    + fBodyAccJerkMeanY
    + fBodyAccJerkMeanZ
    + fBodyAccJerkStdX
    + fBodyAccJerkStdY
    + fBodyAccJerkStdZ
    + fBodyAccJerkMeanFreqX
    + fBodyAccJerkMeanFreqY
    + fBodyAccJerkMeanFreqZ
    + fBodyGyroMeanX
    + fBodyGyroMeanY
    + fBodyGyroMeanZ
    + fBodyGyroStdX
    + fBodyGyroStdY
    + fBodyGyroStdZ
    + fBodyGyroMeanFreqX
    + fBodyGyroMeanFreqY
    + fBodyGyroMeanFreqZ
    + fBodyAccMagMean
    + fBodyAccMagStd
    + fBodyAccMagMeanFreq
    + fBodyBodyAccJerkMagMean
    + fBodyBodyAccJerkMagStd
    + fBodyBodyAccJerkMagMeanFreq
    + fBodyBodyGyroMagMean
    + fBodyBodyGyroMagStd
    + fBodyBodyGyroMagMeanFreq
    + fBodyBodyGyroJerkMagMean
    + fBodyBodyGyroJerkMagStd
    + fBodyBodyGyroJerkMagMeanFreq
    + angletBodyAccMeangravity
    + angletBodyAccJerkMeangravityMean
    + angletBodyGyroMeangravityMean
    + angletBodyGyroJerkMeangravityMean
    + angleXgravityMean
    + angleYgravityMean
    + angleZgravityMean

