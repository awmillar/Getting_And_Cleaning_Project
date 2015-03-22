run_analysis() README file
Initial version, 22 march 2015

The 'run_analysis()' function relies only upon the zipped file 'getdata_projectfiles_UCI HAR Dataset.zip' being in the working directory as if the root of the zip file directory was also the working directory. 
The 'run_analysis()' function takes no arguments - when run, the function will input some of the test data files and will output 2 files:
1 - 'means_and_stddevs.txt' which is the subset of the data with appropriatelabels and only the mean and standard dev data, and
2 - 'final_tidy.txt' which is the final tiday data set.
PLEASE NOTE The additional variables labeled with 'Mean' are included in both sets, even though those measures do not have a corresponding standard deviation.
The 'run_analysis()' function performs all of the proscribed tasks in the assignment:
1.Merges the training and the test sets to create one data set.
This is accomplished by binding the 'x','y',and 'subject' files for the test and training data sets. The 'run_analysis()' function here also labels subjects by their data origin.

2.Extracts only the measurements on the mean and standard deviation for each measurement. 
Selecting measurements to be part of the subset file is done using a 'grep()' command to find the following text fields:
"std()"
"mean()",and 
"Mean" 
and uses this to make a vector of field names with which to filter the combined file made in step 1.

3.Uses descriptive activity names to name the activities in the data set, and
4.Appropriately labels the data set with descriptive variable names. 
These steps are combined, using two read.table statements to allow the lables and variables to be added directly from the provided files, without a lot of extra hand coding. 

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
This combines a unique() function to create a basic dataframe that we will build our dataset upon, such that every row will be one distinct combination of subject, activity, and measurement type.
A tapply()fucntion allows us to use the maean() function for each measurement type across subjects and activities. 
Then that result is turned into a vector, and appended along with the measurement labels to successive iterations of our datframe created by the unique() function, and rbind() is used with a while loop to create our 'long form' dataset.