##This R script will take the wearable data from the Samsung Galaxy S and
##will merge, clean, and tidy it. It will also write a second tidy data frame
##with averages for each variable for each activity and each subject.

##This script requires the reshape2 and dplyr package.
require(reshape2)
require(dplyr)

##download zip file into working directory
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "Dataset.zip", method = "curl")
unzip("Dataset.zip")

rm(fileURL)

##Step 1: Merge training and test sets into one data set
##Note: As the Inertial Signals tables are filtered out in Step 2, they are not
## included here.

testSet <- read.table("UCI HAR Dataset/test/X_test.txt")
trainSet <- read.table("UCI HAR Dataset/train/X_train.txt")

##read in activity numbers and subject IDs
testActivity <- read.table("UCI HAR Dataset/test/y_test.txt")
trainActivity <- read.table("UCI HAR Dataset/train/y_train.txt")

testIDs <- read.table("UCI HAR Dataset/test/subject_test.txt")
trainIDs <- read.table("UCI HAR Dataset/train/subject_train.txt")

##merge into one table, fulfilling step one
testSet <- cbind(testIDs, testActivity, testSet)
trainSet <- cbind(trainIDs, trainActivity, trainSet)

completeSet <- rbind(testSet, trainSet)

##remove temporary variables from global environment
rm(testIDs, testActivity, trainIDs, trainActivity, testSet, trainSet)

##Step 2: Extract only the mean and standard deviation for each measurement
##Note: the angle() and meanFreq() variables are intentionally excluded here. See
##Readme for details.

##read in variable names, search for mean() and sd() variables
varNames <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

toMatch <- c("mean\\(", "std\\(")
matches <- grep(paste(toMatch, collapse = "|"), varNames$V2)
matchNames <- grep(paste(toMatch, collapse = "|"), varNames$V2, value = TRUE)

##subset specified columns from complete data set (IDs, activities, and search results)
colSelect <- c(1, 2, (matches + 2))

tidyData <- completeSet[,colSelect]

##remove temporary variables
rm(colSelect, matches, toMatch, varNames)

##Step 3: Use descriptive activity names in dataset

##Using activity_labels.txt as a guide, convert column to character class and sub in
##descriptive text for numbered activities, then convert to factor class

tidyData$V1.1 <- as.character(tidyData$V1.1)
tidyData$V1.1 <- gsub("1", "walking", tidyData$V1.1)
tidyData$V1.1 <- gsub("2", "walking upstairs", tidyData$V1.1)
tidyData$V1.1 <- gsub("3", "walking downstairs", tidyData$V1.1)
tidyData$V1.1 <- gsub("4", "sitting", tidyData$V1.1)
tidyData$V1.1 <- gsub("5", "standing", tidyData$V1.1)
tidyData$V1.1 <- gsub("6", "laying down", tidyData$V1.1)
tidyData$V1.1 <- factor(tidyData$V1.1)

##Step 4: Appropriately label data set with descriptive names

##Name columns using matches pulled from step 2
names(tidyData) <- c("subjectid", "activity", matchNames)

##Using guidelines from Editing Text Variables lecture, alter column names to be as
##descriptive as feasible (names already contain no underscores, space, or periods)

##all lower case
names(tidyData) <- tolower(names(tidyData))

##replace abbreviations to create more descriptive names
names(tidyData) <- gsub("^t", "time-", names(tidyData))
names(tidyData) <- gsub("^f", "frequency-", names(tidyData))
names(tidyData) <- gsub("acc", "accelerometer", names(tidyData))
names(tidyData) <- gsub("gyro", "gyroscope", names(tidyData))
names(tidyData) <- gsub("mag", "magnitude", names(tidyData))
names(tidyData) <- gsub("std", "standarddeviation", names(tidyData))
names(tidyData) <- gsub("-x$", "-xaxis", names(tidyData))
names(tidyData) <- gsub("-y$", "-yaxis", names(tidyData))
names(tidyData) <- gsub("-z$", "-zaxis", names(tidyData))
names(tidyData) <- gsub("\\(", "", names(tidyData))
names(tidyData) <- gsub("\\)", "", names(tidyData))

##remove temporary variables
rm(matchNames)

##Step 5: From tidy data set, create second, independent tidy data set with the
##average of each variable for each activity and each subject

##define measure variables, add record number as id variable
measureVariables <- names(tidyData)
measureVariables <- measureVariables[-c(1, 2)] ##removing subjectid and activity

tidyData$record <- rownames(tidyData)

##melt data set into narrow form, then calculate and return averages for each
##subject, activity, and variable combination

wearableAverages <- melt (tidyData, id = c("record", "subjectid", "activity"), 
                          measure.vars = measureVariables)

wearableAverages <- summarize(group_by(wearableAverages, subjectid, activity, 
                                       variable), mean(value))

##remove temporary variables
rm(measureVariables)


##write a txt file containing this data set for submission
write.table(wearableAverages, file = "wearableaverages.txt", row.names = FALSE)

