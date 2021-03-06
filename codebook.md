#Data Dictionary - SmartPhone Activity Tracking Means

##Summary
The output dataset is a summary of the Human Activity Recognition Using Smartphones Data Set ( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ).
It contains the means of each measurement for each activity and each subject.

##Columns
The first two columns, *id* , and *activity* , identify an unique datapoint. The following columns are the data.  Each data column represents the average of each meansurement of the original dataset.  Each column is named similarly to the original measurement (with the special characters removed).  For example, *tBodyAccstdX* is the average of original *tBodyAcc-std()-X* (See the original *features.txt*, and *features_info.txt* for more explanations ).  In detail, the columns contain the averages of the mean and standard deviation of the following variable:  
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

##Rows
Each row is a combination of test subject, and the activity.  Each row is uniquely identified by the subject ID and the activity(The first two columns). There are 30 subjects, and 6 activities:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

Therefore, there are 180 total rows.

##Units
Because the original dataset has all its variables normalized, and therefore unitless, all the variables in the output dataset are also unitless.


##References
1. Human Activity Recognition Using Smartphones Data Set(Main page):  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
2. Direct link to the dataset:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  