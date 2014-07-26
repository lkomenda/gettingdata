CodeBook for course project 'getting and cleaning data'
========================================================

General information
-------------------------------------
The dataset is a subset of data downloaded form:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
Where more detailed information on the meaning of the variables can be found.

Generally speaking, first three variables give some identifying info.   
The rest are aggregates of raw measurements.   
The measurements itself are signals from accelerometer and gyroscope (which can be read from the names - 'acc', 'gyro').   
Variables contain information on signals generated in 3D space (XYZ coordinates also can be found in variables names).
Means and standard deviations were chosen as aggregating functions (those aggregation was already done in source dataset).



position in the dataset|variable name|variable description|data.type
-----------------------|-------------|--------------------|--------
1|SubID|Id of the subject|integer
2|group|Group identyfier|factor
factor levels:|
 |*1*| *'train sample'*
 |*2*| *'test sample'*
||
3|activity|activity identyfier|factor
factor levels:|
 |*1*| *'WALKING'*
 |*2*| *'WALKING_UPSTAIRS'*
 |*3*| *'WALKING_DOWNSTAIRS'*
 |*4*| *'SITTING'*
 |*5*| *'STANDING'*
 |*6*| *'LAYING'*
||
4|tBodyAccMeanX|tBodyAccMeanX|double
5|tBodyAccMeanY|tBodyAccMeanY|double
6|tBodyAccMeanZ|tBodyAccMeanZ|double
7|tBodyAccStdX|tBodyAccStdX|double
8|tBodyAccStdY|tBodyAccStdY|double
9|tBodyAccStdZ|tBodyAccStdZ|double
10|tGravityAccMeanX|tGravityAccMeanX|double
11|tGravityAccMeanY|tGravityAccMeanY|double
12|tGravityAccMeanZ|tGravityAccMeanZ|double
13|tGravityAccStdX|tGravityAccStdX|double
14|tGravityAccStdY|tGravityAccStdY|double
15|tGravityAccStdZ|tGravityAccStdZ|double
16|tBodyAccJerkMeanX|tBodyAccJerkMeanX|double
17|tBodyAccJerkMeanY|tBodyAccJerkMeanY|double
18|tBodyAccJerkMeanZ|tBodyAccJerkMeanZ|double
19|tBodyAccJerkStdX|tBodyAccJerkStdX|double
20|tBodyAccJerkStdY|tBodyAccJerkStdY|double
21|tBodyAccJerkStdZ|tBodyAccJerkStdZ|double
22|tBodyGyroMeanX|tBodyGyroMeanX|double
23|tBodyGyroMeanY|tBodyGyroMeanY|double
24|tBodyGyroMeanZ|tBodyGyroMeanZ|double
25|tBodyGyroStdX|tBodyGyroStdX|double
26|tBodyGyroStdY|tBodyGyroStdY|double
27|tBodyGyroStdZ|tBodyGyroStdZ|double
28|tBodyGyroJerkMeanX|tBodyGyroJerkMeanX|double
29|tBodyGyroJerkMeanY|tBodyGyroJerkMeanY|double
30|tBodyGyroJerkMeanZ|tBodyGyroJerkMeanZ|double
31|tBodyGyroJerkStdX|tBodyGyroJerkStdX|double
32|tBodyGyroJerkStdY|tBodyGyroJerkStdY|double
33|tBodyGyroJerkStdZ|tBodyGyroJerkStdZ|double
34|tBodyAccMagMean|tBodyAccMagMean|double
35|tBodyAccMagStd|tBodyAccMagStd|double
36|tGravityAccMagMean|tGravityAccMagMean|double
37|tGravityAccMagStd|tGravityAccMagStd|double
38|tBodyAccJerkMagMean|tBodyAccJerkMagMean|double
39|tBodyAccJerkMagStd|tBodyAccJerkMagStd|double
40|tBodyGyroMagMean|tBodyGyroMagMean|double
41|tBodyGyroMagStd|tBodyGyroMagStd|double
42|tBodyGyroJerkMagMean|tBodyGyroJerkMagMean|double
43|tBodyGyroJerkMagStd|tBodyGyroJerkMagStd|double
44|fBodyAccMeanX|fBodyAccMeanX|double
45|fBodyAccMeanY|fBodyAccMeanY|double
46|fBodyAccMeanZ|fBodyAccMeanZ|double
47|fBodyAccStdX|fBodyAccStdX|double
48|fBodyAccStdY|fBodyAccStdY|double
49|fBodyAccStdZ|fBodyAccStdZ|double
50|fBodyAccJerkMeanX|fBodyAccJerkMeanX|double
51|fBodyAccJerkMeanY|fBodyAccJerkMeanY|double
52|fBodyAccJerkMeanZ|fBodyAccJerkMeanZ|double
53|fBodyAccJerkStdX|fBodyAccJerkStdX|double
54|fBodyAccJerkStdY|fBodyAccJerkStdY|double
55|fBodyAccJerkStdZ|fBodyAccJerkStdZ|double
56|fBodyGyroMeanX|fBodyGyroMeanX|double
57|fBodyGyroMeanY|fBodyGyroMeanY|double
58|fBodyGyroMeanZ|fBodyGyroMeanZ|double
59|fBodyGyroStdX|fBodyGyroStdX|double
60|fBodyGyroStdY|fBodyGyroStdY|double
61|fBodyGyroStdZ|fBodyGyroStdZ|double
62|fBodyAccMagMean|fBodyAccMagMean|double
63|fBodyAccMagStd|fBodyAccMagStd|double
64|fBodyBodyAccJerkMagMean|fBodyBodyAccJerkMagMean|double
65|fBodyBodyAccJerkMagStd|fBodyBodyAccJerkMagStd|double
66|fBodyBodyGyroMagMean|fBodyBodyGyroMagMean|double
67|fBodyBodyGyroMagStd|fBodyBodyGyroMagStd|double
68|fBodyBodyGyroJerkMagMean|fBodyBodyGyroJerkMagMean|double
69|fBodyBodyGyroJerkMagStd|fBodyBodyGyroJerkMagStd|double
