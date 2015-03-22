#this function relies only upon the zipped file 
#'getdata_projectfiles_UCI HAR Dataset.zip' 
#being in the working directory as if the root of the zip file directory
#was also the working directory. 
#this function takes no arguments - when run, the function will input 
#some of the test data files and will output 2 files:
#1 - 'means_and_stddevs.txt' which is the subset of the data with appropriate
#labels and only the mean and standard dev data, and
#2 - 'final_tidy.txt' which is the final tiday data set
#PLEASE NOTE The additional variables labeled with 'Mean' are included 
#in both sets, even though those measures do not have a corresponding 
#standard deviation.

run_analysis <- function()
{
#1.Merges the training and the test sets to create one data set.

xtrain<- read.table ("train/X_train.txt")
ytrain<- read.table ("train/y_train.txt")
ztrain<- read.table ("train/subject_train.txt")
len<- length(xtrain[,1])
DataOrigin<- replicate(len,"Training")
total_train<- cbind(ztrain,DataOrigin,ytrain,xtrain)

xtest<- read.table ("test/X_test.txt")
ytest<- read.table ("test/y_test.txt")
ztest<- read.table ("test/subject_test.txt")
len<- length(xtest[,1])
DataOrigin<- replicate(len,"Test")
total_test<- cbind(ztest,DataOrigin,ytest,xtest)

totalset<- rbind(total_train,total_test)
totalset2<- totalset[order (totalset[,1],totalset[,3]),]
head(totalset2)
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 

#selecting measurements to be part of the subset file
findstd<- grep(c("std()"),as.character(feat[,2]),fixed=TRUE)
findmean1<- grep(c("mean()"),as.character(feat[,2]),fixed=TRUE)
findmean2<- grep(c("Mean"),as.character(feat[,2]),fixed=TRUE)

varnumlist<-sort(c(findstd,findmean1,findmean2))
varnumlist2<-c(1,2,3,varnumlist+3)

subset<-totalset2[,varnumlist2]


#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names. 
#these two read.table statements allow the lables and variables
# to be selected and coded without a lot of extra coding. 
read.table("activity_labels.txt")
feat<- read.table("features.txt")
names(act_label)<-c("Code","Activity")
namevarlist<- sort(c(findstd,findmean1,findmean2))
varnamelist2<-c("SubjectID","DataOrigin","ActivityCode",varnamelist)
names(subset)<- varnamelist2
subset_labeled1<-merge(subset,act_label,by.x="ActivityCode",by.y="Code",all=TRUE)
subset_labeled2<- subset_labeled1[c(2,3,1,77,4:76)]

#5.From the data set in step 4, creates a second, 
#independent tidy data set with the average of each variable for each activity and each subject.

subsetordered1<-(subset_labeled2[order (subset_labeled2[,1],subset_labeled2[,3]),])
len3<- length(measureslist)
frameX<- data.frame(unique(subsetordered1[c(1,3,4)]))
gg<- tapply(subsetordered1[,5],list(subsetordered1[,3],subsetordered1[,1]),mean)
ggg<-data.frame(c(gg))
frameY<- cbind(frameX,measureslist[1])
frameY<- cbind(frameY,ggg)
colnames(frameY)[4]<-"Measures"
colnames(frameY)[5]<-"Average"
count<- 2
ending<- len3
while (count <= ending) {
	gg<- tapply(subsetordered1[,(count+4)],list(subsetordered1[,3],subsetordered1[,1]),mean)
	ggg<- data.frame(c(gg))
	frame1<-cbind(frameX,measureslist[count])	
	frame1<- cbind(frame1,ggg)
	colnames(frame1)[4]<-"Measures"
	colnames(frame1)[5]<-"Average"
	print (tail(frameY))
	frameY<- rbind(frameY,frame1)
	count<- count +1}
len4<- length(frameY[,1])
rownames(frameY)<-c(1:len4)
write.table (subsetordered1,"means_and_stddevs.txt")
write.table (frameY,"final_tidy.txt",row.name=FALSE)
}	