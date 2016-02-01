library(dplyr)
dataDir <- "UCI HAR Dataset"

#reading the train dataset
trainFeaturesDataset <- read.table(paste0(dataDir, "/train/", "X_train.txt"))
trainLabelsDataset <- read.table(paste0(dataDir, "/train/", "y_train.txt"))
trainSubjectDataset <- read.table(paste0(dataDir, "/train/", "subject_train.txt"))

#reading the test dataset
testFeaturesDataset <- read.table(paste0(dataDir, "/test/", "X_test.txt"))
testLabelsDataset <- read.table(paste0(dataDir, "/test/", "y_test.txt"))
testSubjectDataset <- read.table(paste0(dataDir, "/test/", "subject_test.txt"))

#merging the train and train datasets
featuresDataset <- rbind(trainFeaturesDataset, testFeaturesDataset);
labelsDataset <- rbind(trainLabelsDataset, testLabelsDataset)
subjectDataset <- rbind(trainSubjectDataset, testSubjectDataset)

#setting features names
featuresNames <- read.table(paste0(dataDir, "/features.txt"), stringsAsFactors = FALSE)
featuresNamesMean <- grep("mean\\(\\)", featuresNames$V2)
featuresNamesStd <- grep("std\\(\\)", featuresNames$V2)

featuresDatasetMean <- featuresDataset[,featuresNamesMean]
names(featuresDatasetMean) <- featuresNames$V2[featuresNamesMean]

featuresDatasetStd <- featuresDataset[,featuresNamesStd]
names(featuresDatasetStd) <- featuresNames$V2[featuresNamesStd]

#merging "mean" and "std" features
featuresDataset <- cbind(featuresDatasetMean, featuresDatasetStd)

#setting activity labels
activityLabels <- read.table(paste0(dataDir, "/activity_labels.txt"))
activityFactor <- factor(labelsDataset$V1)
levels(activityFactor) <- activityLabels$V2

#adding 'activity' and subject collumn to the final dataset
names(subjectDataset) <- 'subject'
featuresDataset <- cbind(subjectDataset, activityFactor, featuresDataset)

#grouping data by an activity labels and a subject
groupedData <- featuresDataset %>% group_by(subject, activityFactor) %>% summarise_each(funs(mean))

