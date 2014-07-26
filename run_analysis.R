#########course project


##not run - I###
#set to your working directgory
#setwd("YOUR PATH")

###preprocesing before the actual assignment excercise code
#download the data 
#ULR<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "

#downloading from secure addresses tends to give problems on some systems 
#e.g. I had unresolved downloding errors on Ubuntu
#If you encounter problems just download the data to your workig directory
#download.file(ULR, "data.zip", method = "curl")

#unzip the data using external zip then 

###############
#RUN FROM HERE!
###############

#read train data into 3 separate tables
read.table("./UCI HAR Dataset/train/subject_train.txt", sep =" ")->subject_train
read.table("./UCI HAR Dataset/train/Y_train.txt", sep =" ")->Y_train
read.fwf("./UCI HAR Dataset/train/X_train.txt", widths = rep(16,561), 
         buffersize=15)->X_train    							#it is fixed width format with 561 variables each 16chars long
#the last command can take some time. Be patient.


#read test data into 3 separate tables
read.table("./UCI HAR Dataset/test/subject_test.txt", sep =" ")->subject_test
read.table("./UCI HAR Dataset/test/Y_test.txt", sep =" ")->Y_test
read.fwf("./UCI HAR Dataset/test/X_test.txt", widths = rep(16,561), 
         buffersize=20)->X_test									#it is fixed width format with 561 variables each 16chars long

#read labels for features and activities
read.table("./UCI HAR Dataset/activity_labels.txt", sep =" ", as.is = 2)->activity_labels
read.table("./UCI HAR Dataset/features.txt", sep =" ", as.is = 2)->features

#bind tables into full train and test datasets
group<-rep(1, nrow(subject_train))
cbind(subject_train, group, Y_train, X_train)->train_full
group<-rep(2, nrow(subject_test))
cbind(subject_test, group, Y_test, X_test)->test_full
#the actual assignment excersise code:

#train_full and test_full are are full train and test datasets
rbind(train_full, test_full)->dat_full

#Create an index variable with numbers of variables (from the feature set) 
#containin means and standard deviations. I assume that only variables with suffixes:
#"mean()" and "std()" contain the measurements to be extracted
grep("mean\\()|std\\()",features[,2])->MeanSD_index

#Use MeanSD_index vector to subset dat_full. Also include 3 first variables: subject id, grup id, 
#activity identifier  
dat_tidy1<-dat_full[,c(1:3, (MeanSD_index+3))]

#We name variables in the data set with more descriptive and tidy names.

#create a vector with dirty names
VarNames<-c("SubID", "group", "activity", features[MeanSD_index,2] )

#tidy up names of features: I assume that names should not contain any special characters
gsub("\\()|-","",VarNames)->VarNames
#And it will be better if aggregate function names stars with capital letter
gsub("mean","Mean",VarNames)->VarNames
gsub("std","Std",VarNames)->VarNames

#we check if our vector of names has the propper length
#this is not automatic process so you should check If the result is true. 
length(VarNames)==ncol(dat_tidy1)
#If so...
#Name variables in dat_tidy1
colnames(dat_tidy1)<-VarNames

#Now we factorize group id and activity id
factor (dat_tidy1$group, labels = c("train group", "test group"))->dat_tidy1$group
factor (dat_tidy1$activity, labels = activity_labels[,2])->dat_tidy1$activity

write.table(dat_tidy1, "data_CP_tidy1.txt", sep = "\t", row.names = F)

#Finly we have our tidy dataset dat_tidy1. It is long data format with multiple rows describing one subject

######################################################################
#We create a new data set
# with the average of each variable for each activity and each subject.
#we will aggregate observations using arithmetic mean 

library(plyr)

#first we melt the data frame using activity and ID as id's and all the other
#variables as measurement

melt(dat_tidy1, id = c("SubID", "group", "activity"), 
        measure.vars = colnames(dat_tidy1)[4:ncol(dat_tidy1)])->dat_melted

#then we cast it to data frame using mean as aggregation function
dcast(dat_melted, SubID + group + activity  ~ variable, mean)->dat_tidy2


