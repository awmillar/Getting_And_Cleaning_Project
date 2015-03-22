Tidy dataset codebook.

This data codebook is based on information provided in the 
'getdata_projectfiles_UCI HAR Dataset.zip' file, specifically the 'README' and 'features_info' text files.

Initial Version, 22 March 2015

The variables in this dataset are codified so that each row is a single average observation of a specific measure (a selected mean or standard deviation) for a particular activity for a paricular subject.
The activity, subject, and measurement descriptors are all their own variable - this results in a datset of 13,140 rows and 5 columns.
In addition the dataset contains an index with an integer value of 1 to 13140.

The variables in the dataset are:
1)SubjectID 2)ActivityCode 3)Activity 4)Measures 5)Average

1) "SubjectID" 

Integer variables with values from 1 to 30, corresponding to the identifier of each of the subjects in the experiment.

2) "ActivityCode" 

Integer variable with values from 1 to 6 corresponding to the original activity code values from the 'y_test.txt' file.

"1" 1 
"2" 2 
"3" 3  
"4" 4   
"5" 5       
"6" 6

3) "Activity" 

Character variable with six distinct values corresponding to a desccription in english of each of the activities performed by the subjects. The index of this variable corresponds to the numbering of the 'Activity Code' variable.

"1" WALKING 
"2" WALKING_UPSTAIRS  
"3" WALKING_DOWNSTAIRS   
"4" SITTING   
"5" STANDING       
"6" LAYING

4) "Measures"

Character variable with 73 distinct values corresponding to means and standard deviations for the following measurements:
(In cases where the variable name ends in 'XYZ', there are three values in this variable - one for each of the three axes, such as 'tBodyAcc-mean()-X, tBodyAcc-mean()-Y, and tBodyAcc-mean()-Z')
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

in addition, 5 other variables labeled as 'means' are included

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The following are all of the values which appear in this variable:
"1" "tBodyAcc-mean()-X"
"2" "tBodyAcc-mean()-Y"
"3" "tBodyAcc-mean()-Z"
"4" "tBodyAcc-std()-X"
"5" "tBodyAcc-std()-Y"
"6" "tBodyAcc-std()-Z"
"7" "tGravityAcc-mean()-X"
"8" "tGravityAcc-mean()-Y"
"9" "tGravityAcc-mean()-Z"
"10" "tGravityAcc-std()-X"
"11" "tGravityAcc-std()-Y"
"12" "tGravityAcc-std()-Z"
"13" "tBodyAccJerk-mean()-X"
"14" "tBodyAccJerk-mean()-Y"
"15" "tBodyAccJerk-mean()-Z"
"16" "tBodyAccJerk-std()-X"
"17" "tBodyAccJerk-std()-Y"
"18" "tBodyAccJerk-std()-Z"
"19" "tBodyGyro-mean()-X"
"20" "tBodyGyro-mean()-Y"
"21" "tBodyGyro-mean()-Z"
"22" "tBodyGyro-std()-X"
"23" "tBodyGyro-std()-Y"
"24" "tBodyGyro-std()-Z"
"25" "tBodyGyroJerk-mean()-X"
"26" "tBodyGyroJerk-mean()-Y"
"27" "tBodyGyroJerk-mean()-Z"
"28" "tBodyGyroJerk-std()-X"
"29" "tBodyGyroJerk-std()-Y"
"30" "tBodyGyroJerk-std()-Z"
"31" "tBodyAccMag-mean()"
"32" "tBodyAccMag-std()"
"33" "tGravityAccMag-mean()"
"34" "tGravityAccMag-std()"
"35" "tBodyAccJerkMag-mean()"
"36" "tBodyAccJerkMag-std()"
"37" "tBodyGyroMag-mean()"
"38" "tBodyGyroMag-std()"
"39" "tBodyGyroJerkMag-mean()"
"40" "tBodyGyroJerkMag-std()"
"41" "fBodyAcc-mean()-X"
"42" "fBodyAcc-mean()-Y"
"43" "fBodyAcc-mean()-Z"
"44" "fBodyAcc-std()-X"
"45" "fBodyAcc-std()-Y"
"46" "fBodyAcc-std()-Z"
"47" "fBodyAccJerk-mean()-X"
"48" "fBodyAccJerk-mean()-Y"
"49" "fBodyAccJerk-mean()-Z"
"50" "fBodyAccJerk-std()-X"
"51" "fBodyAccJerk-std()-Y"
"52" "fBodyAccJerk-std()-Z"
"53" "fBodyGyro-mean()-X"
"54" "fBodyGyro-mean()-Y"
"55" "fBodyGyro-mean()-Z"
"56" "fBodyGyro-std()-X"
"57" "fBodyGyro-std()-Y"
"58" "fBodyGyro-std()-Z"
"59" "fBodyAccMag-mean()"
"60" "fBodyAccMag-std()"
"61" "fBodyBodyAccJerkMag-mean()"
"62" "fBodyBodyAccJerkMag-std()"
"63" "fBodyBodyGyroMag-mean()"
"64" "fBodyBodyGyroMag-std()"
"65" "fBodyBodyGyroJerkMag-mean()"
"66" "fBodyBodyGyroJerkMag-std()"
"67" "angle(tBodyAccMean,gravity)"
"68" "angle(tBodyAccJerkMean),gravityMean)"
"69" "angle(tBodyGyroMean,gravityMean)"
"70" "angle(tBodyGyroJerkMean,gravityMean)"
"71" "angle(X,gravityMean)"
"72" "angle(Y,gravityMean)"
"73" "angle(Z,gravityMean)"


 
5) "Average"

Numeric variable where each value corresponds to the mean of observations for each of the 73 'Measures' types. These means are calculated for each distinct intersection of a particular measure, participant, and activity. 
