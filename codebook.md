#Data Dictionary - SmartPhone Activity Tracking Means

##Summary
The dataset is a summary of the Human Activity Recognition Using Smartphones Data Set ( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ).
It contains the means of each measurement for each activity and each subject.

##Rows
Each row represents the each meansurement of the original dataset.  Each row is named similarly to the original measurement (with the special characters removed).  tBodyAccstdX is the mean of original tBodyAcc-std()-X (See the original features.txt, and features_info.txt).  The rows contains the averages of the mean and stdeviation of the following variable:  
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

##Columns
Each column contains a combination of test subject, and the activity.  Each is named with the test subject ID first, then followed by a dot, then followed by the activity.  For example 15.WALKING_DOWNSTAIRS represents the walking downstairs dataset for subject 15.  There are 30 subjects, and 6 activities:
	* WALKING
	* WALKING_UPSTAIRS
	* WALKING_DOWNSTAIRS
	* SITTING
	* STANDING
	* LAYING