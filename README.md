#Readme - SmartPhone Activity Tracking Means

## Summary
The script will create a summary of the Human Activity Recognition Using Smartphones Data Set ( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ).
The output dataset contains the averages of the mean and standard deviation of each measurement for each activity and each subject.

## Prerequisites
* R version 3.2.1 or up is installed
* The full dataset( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ) is downloaded and extracted to the current working directory

## Usage
Inside the R console:
```
  source("run_analysis.R") 
  means <- run_analysis()
```

## Details

##References
1. Human Activity Recognition Using Smartphones Data Set(Main page):  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
2. Direct link the the dataset:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  