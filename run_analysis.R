run_analysis <- function(){
    #includes
    #---------
    library(dplyr)
 
    #the training set
    #-----------------
    
    #load in the training vars
    trainSig <- read.table("train/X_train.txt", header=FALSE )
    trainAct <- read.table("train/Y_train.txt", header=FALSE )
    trainSub <- read.table("train/subject_train.txt", header=FALSE )
    
    #only keeping the needed cols
    trainSig <- trainSig[, c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 240:241, 253:254, 266:271, 345:350,
                             424:429, 503:504, 516:517, 529:530, 542:543)]
    #labeling the activities
    trainAct[,1] <- factor(trainAct[,1], labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING") )
    
    #combining the 3 tables into 1
    trainSig <- cbind(trainSub, trainAct, trainSig)
    remove(trainAct)
    remove(trainSub)
    
    #the test set
    #-----------------
    
    #load in the test vars
    testSig <- read.table("test/X_test.txt", header=FALSE )
    testAct <- read.table("test/Y_test.txt", header=FALSE )
    testSub <- read.table("test/subject_test.txt", header=FALSE )
    
    #only keeping the needed cols
    testSig <- testSig[, c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 240:241, 253:254, 266:271, 345:350,
                             424:429, 503:504, 516:517, 529:530, 542:543)]
    
    #labeling the activities
    testAct[,1] <- factor(testAct[,1], labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING") )
    
    #combining the 3 tables into 1
    testSig <- cbind(testSub, testAct, testSig)
    remove(testAct)
    remove(testSub)
    
    
    #combining the two datasets and naming the cols
    #---------------------
    comboSig <- rbind(trainSig, testSig)
    remove(trainSig)
    remove(testSig)
    
    #naming the columns (labels belong to the same group are put on a same line)
    colnames(comboSig) <- c("subject", "activity",
                            "tBodyAccmeanX","tBodyAccmeanY", "tBodyAccmeanZ", "tBodyAccstdX","tBodyAccstdY", "tBodyAccstdZ",
                            "tGravityAccmeanX", "tGravityAccmeanY", "tGravityAccmeanZ", "tGravityAccstdX", "tGravityAccstdY", "tGravityAccstdZ",
                            "tBodyAccJerkmeanX", "tBodyAccJerkmeanY","tBodyAccJerkmeanZ","tBodyAccJerkstdX", "tBodyAccJerkstdY", "tBodyAccJerkstdZ",
                            "tBodyGyromeanX","tBodyGyromeanY","tBodyGyromeanZ","tBodyGyrostdX", "tBodyGyrostdY", "tBodyGyrostdZ",
                            "tBodyGyroJerkmeanX", "tBodyGyroJerkmeanY", "tBodyGyroJerkmeanZ", "tBodyGyroJerkstdX","tBodyGyroJerkstdY","tBodyGyroJerkstdZ",
                            "tBodyAccMagmean", "tBodyAccMagstd",
                            "tGravityAccMagmean", "tGravityAccMagstd",
                            "tBodyGyroMagmean", "tBodyGyroMagstd",
                            "tBodyGyroJerkMagmean", "tBodyGyroJerkMagstd",
                            "fBodyAccmeanX", "fBodyAccmeanY", "fBodyAccmeanZ", "fBodyAccstdX", "fBodyAccstdY", "fBodyAccstdZ",
                            "fBodyAccJerkmeanX", "fBodyAccJerkmeanY", "fBodyAccJerkmeanZ", "fBodyAccJerkstdX", "fBodyAccJerkstdY", "fBodyAccJerkstdZ",
                            "fBodyGyromeanX", "fBodyGyromeanY", "fBodyGyromeanZ", "fBodyGyrostdX", "fBodyGyrostdY", "fBodyGyrostdZ",
                            "fBodyAccMagmean", "fBodyAccMagstd",
                            "fBodyBodyAccJerkMagmean", "fBodyBodyAccJerkMagstd",
                            "fBodyBodyGyroMagmean", "fBodyBodyGyroMagstd",
                            "fBodyBodyGyroJerkMagmean", "fBodyBodyGyroJerkMagstd"
                            )
    
    #getting the mean by subjects and activities
    means <- comboSig %>% group_by(subject, activity) %>% summarise_each(funs(mean))
    return( means )
}