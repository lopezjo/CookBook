# CookBook
## Merges the training and the test sets to create one data set
The training and test data sets are provided separately via three files in separate folders:

 1. Feature
 2. Subject
 3. Activity

The files do not include a header lines so by default the columns are named
V1..Vn where n is the number of variables defined in the file.

The script acquires all the variable names, e.g. column names, for the
features table from features.txt and then assigns "subject" and "activity" as
the column names for the other two tables respectively.

The three tables are brought together via cbind() thus allowing a single table 
to contain all the training or test data.

The training and test data are then combined via rbind() into a single table
containing all the data.

## Extracts only the measurements on the mean and standard deviation for each measurement. 
The data merge operation keeps all the columns. The second requirement of the project
is to discard all columns not having to do with mean or std deviation. Therefore,
grep is used to find and keep these columns while discarding others.

## Uses descriptive activity names to name the activities in the data set
The third requirement is to use descriptive names for the activity instead of 
the numeric data loaded from the subject data file. To do this, activity_labels.txt
is read in to create a factor, then the activity column is converted into a factor.

## Appropriately labels the data set with descriptive variable names. 
This is a very subjective requirement that I interpret as applying the feature names 
listed in features.txt. As such, that is what I have done and the tidy data set adheres 
to the originating variable names and avoids confusion. 

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
A file named tidy.txt is created in the working folder via write.table(). This file can 
be read back in via read.table().

For example,

	read.table("tidy.txt")

The features of tidy.txt includes all features in the raw data as named by
features.txt with the exception of columns not including "mean" or "std" in the
name and additionally includes the "subject" and "activity" columns.

The full set of features is:

	subject
	activity
	tBodyAcc-mean()-X
	tBodyAcc-mean()-Y
	tBodyAcc-mean()-Z
	tBodyAcc-std()-X
	tBodyAcc-std()-Y
	tBodyAcc-std()-Z
	tGravityAcc-mean()-X
	tGravityAcc-mean()-Y
	tGravityAcc-mean()-Z
	tGravityAcc-std()-X
	tGravityAcc-std()-Y
	tGravityAcc-std()-Z
	tBodyAccJerk-mean()-X
	tBodyAccJerk-mean()-Y
	tBodyAccJerk-mean()-Z
	tBodyAccJerk-std()-X
	tBodyAccJerk-std()-Y
	tBodyAccJerk-std()-Z
	tBodyGyro-mean()-X
	tBodyGyro-mean()-Y
	tBodyGyro-mean()-Z
	tBodyGyro-std()-X
	tBodyGyro-std()-Y
	tBodyGyro-std()-Z
	tBodyGyroJerk-mean()-X
	tBodyGyroJerk-mean()-Y
	tBodyGyroJerk-mean()-Z
	tBodyGyroJerk-std()-X
	tBodyGyroJerk-std()-Y
	tBodyGyroJerk-std()-Z
	tBodyAccMag-mean()
	tBodyAccMag-std()
	tGravityAccMag-mean()
	tGravityAccMag-std()
	tBodyAccJerkMag-mean()
	tBodyAccJerkMag-std()
	tBodyGyroMag-mean()
	tBodyGyroMag-std()
	tBodyGyroJerkMag-mean()
	tBodyGyroJerkMag-std()
	fBodyAcc-mean()-X
	fBodyAcc-mean()-Y
	fBodyAcc-mean()-Z
	fBodyAcc-std()-X
	fBodyAcc-std()-Y
	fBodyAcc-std()-Z
	fBodyAcc-meanFreq()-X
	fBodyAcc-meanFreq()-Y
	fBodyAcc-meanFreq()-Z
	fBodyAccJerk-mean()-X
	fBodyAccJerk-mean()-Y
	fBodyAccJerk-mean()-Z
	fBodyAccJerk-std()-X
	fBodyAccJerk-std()-Y
	fBodyAccJerk-std()-Z
	fBodyAccJerk-meanFreq()-X
	fBodyAccJerk-meanFreq()-Y
	fBodyAccJerk-meanFreq()-Z
	fBodyGyro-mean()-X
	fBodyGyro-mean()-Y
	fBodyGyro-mean()-Z
	fBodyGyro-std()-X
	fBodyGyro-std()-Y
	fBodyGyro-std()-Z
	fBodyGyro-meanFreq()-X
	fBodyGyro-meanFreq()-Y
	fBodyGyro-meanFreq()-Z
	fBodyAccMag-mean()
	fBodyAccMag-std()
	fBodyAccMag-meanFreq()
	fBodyBodyAccJerkMag-mean()
	fBodyBodyAccJerkMag-std()
	fBodyBodyAccJerkMag-meanFreq()
	fBodyBodyGyroMag-mean()
	fBodyBodyGyroMag-std()
	fBodyBodyGyroMag-meanFreq()
	fBodyBodyGyroJerkMag-mean()
	fBodyBodyGyroJerkMag-std()
	fBodyBodyGyroJerkMag-meanFreq()
	angle(tBodyAccMean,gravity)
	angle(tBodyAccJerkMean),gravityMean)
	angle(tBodyGyroMean,gravityMean)
	angle(tBodyGyroJerkMean,gravityMean)
	angle(X,gravityMean)
	angle(Y,gravityMean)
	angle(Z,gravityMean)

