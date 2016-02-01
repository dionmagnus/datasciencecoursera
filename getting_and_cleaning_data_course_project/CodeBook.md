# Human Activity Recognition Data Set

This is a discription of human activity data, collected by a Samsung smartphone during human activity recognition experiments.
It is based on the data provied at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
There are two datasets in the initial files. Train and test datasets.
The first step in the currect data proxessing is to merge these datasets together. The merged dataset contains 10266 observations. 
Then only means and stds of which variables are selected. There are 66 features from the initial data containg means and stsds values:
* "tBodyAcc-mean()-X"
* "tBodyAcc-mean()-Y"
* "tBodyAcc-mean()-Z"
* "tGravityAcc-mean()-X"
* "tGravityAcc-mean()-Y"
* "tGravityAcc-mean()-Z"
* "tBodyAccJerk-mean()-X"
* "tBodyAccJerk-mean()-Y"
* "tBodyAccJerk-mean()-Z"
* "tBodyGyro-mean()-X"
* "tBodyGyro-mean()-Y"
* "tBodyGyro-mean()-Z"
* "tBodyGyroJerk-mean()-X"
* "tBodyGyroJerk-mean()-Y"
* "tBodyGyroJerk-mean()-Z"
* "tBodyAccMag-mean()"
* "tGravityAccMag-mean()"
* "tBodyAccJerkMag-mean()"
* "tBodyGyroMag-mean()"
* "tBodyGyroJerkMag-mean()"
* "fBodyAcc-mean()-X"
* "fBodyAcc-mean()-Y"
* "fBodyAcc-mean()-Z"
* "fBodyAccJerk-mean()-X"
* "fBodyAccJerk-mean()-Y"
* "fBodyAccJerk-mean()-Z"
* "fBodyGyro-mean()-X"
* "fBodyGyro-mean()-Y"
* "fBodyGyro-mean()-Z"
* "fBodyAccMag-mean()"
* "fBodyBodyAccJerkMag-mean()"
* "fBodyBodyGyroMag-mean()"
* "fBodyBodyGyroJerkMag-mean()"
* "tBodyAcc-std()-X"
* "tBodyAcc-std()-Y"
* "tBodyAcc-std()-Z"
* "tGravityAcc-std()-X"
* "tGravityAcc-std()-Y"
* "tGravityAcc-std()-Z"
* "tBodyAccJerk-std()-X"
* "tBodyAccJerk-std()-Y"
* "tBodyAccJerk-std()-Z"
* "tBodyGyro-std()-X"
* "tBodyGyro-std()-Y"
* "tBodyGyro-std()-Z"
* "tBodyGyroJerk-std()-X"
* "tBodyGyroJerk-std()-Y"
* "tBodyGyroJerk-std()-Z"
* "tBodyAccMag-std()"
* "tGravityAccMag-std()"
* "tBodyAccJerkMag-std()"
* "tBodyGyroMag-std()"
* "tBodyGyroJerkMag-std()"
* "fBodyAcc-std()-X"
* "fBodyAcc-std()-Y"
* "fBodyAcc-std()-Z"
* "fBodyAccJerk-std()-X"
* "fBodyAccJerk-std()-Y"
* "fBodyAccJerk-std()-Z"
* "fBodyGyro-std()-X"
* "fBodyGyro-std()-Y"
* "fBodyGyro-std()-Z"
* "fBodyAccMag-std()"
* "fBodyBodyAccJerkMag-std()"
* "fBodyBodyGyroMag-std()"
* "fBodyBodyGyroJerkMag-std()"

There are the types of physical variables measured here. Accreleration is measured in "g", and angular velocity is measured in radians/second.
The *featuresDataset*, which is created during a run of the analysis script, contains 10266 rows, one row per observation and 68 columns.
The first column is the data set is the subject id. 30 people took part in the experiments, and each of them had been assigned an id. This id is on the fitst column in the dataset. The second colunm corresponds
to an activity. There were 6 activities like SITTING, LAYING WALKING etc. Another 66 columns in the dataset are collected features.

The next step in the data processing is grouping data by subject and activity. The dataset is called *groupedData*. It consists of 180 rows, one row per an activity/subject combination and 68 columns. 
The colums are the same as for the first dataset, but now they containg average values for a given subject and activity combination.

The two final datasets are stored to text files under a *processed_data* directory. The files are called *featuresDataset.txt* and *groupedData.txt* respectivly. 
