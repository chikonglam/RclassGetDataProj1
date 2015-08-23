#Readme - SmartPhone Activity Tracking Means

## Summary
The script will create a summary of the Human Activity Recognition Using Smartphones Data Set ( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ).
The output dataset contains the averages of the mean and standard deviation of each measurement for each activity and each subject.

## Prerequisites
* R version 3.2.1 or up is installed
* dplyr R package 0.2 or up is installed
* The full dataset( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ) is downloaded and extracted to the current working directory

## Usage
Inside the R console:
```
  source("run_analysis.R") 
  means <- run_analysis()
```

## Output
A summary dataframe where the rows are the data points for each subject-activity combination, and the columns are the averages of the measurements. See codebook.md for more details.

## Details
  The run_analysis() does the following:
* 1. Reads the various files from the test dataset and the training dataset
* 2. Extracts only the measurements on the mean and standard deviation for each measurement. (The rest are discarded)
* 3. Provides descriptive activity names, and experiment subject information
* 4. Merges the test dataset with the training dataset
* 5. Outputs a summary dataframe where the rows are the data points for each subject-activity combination, and the columns are the averages of the retained measurements.

##References
1. Human Activity Recognition Using Smartphones Data Set(Main page):  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
2. Direct link to the dataset:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  