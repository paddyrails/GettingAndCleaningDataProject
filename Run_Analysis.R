#Set working directory to where data is
#setwd('..../UCI HAR Dataset')
library(plyr)

#Read activity_labels.txt which has names of the activities
activity <- read.table("activity_labels.txt")

#PREPARE TEST Data
#Read y_test.txt which has activities corresponding to the observations
#Read subject_text.txt which has subjects corresponding to observations

y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

#get activity names, subject data in one dataset without changing row order
xlabels <- join(y_test, activity)
xlabelstest <- cbind(xlabels, subject_test)
#Give appropriate names to the columns
colnames(xlabelstest) <- c("ActivityCode", "Activity", "Subject")

#READ TEST READINGS
X_test <- read.table("./test/X_test.txt")
#Assign Column names and add Activity and Subject data
features <- read.table("features.txt")
colnames(X_test) <- features$V2
test <- cbind(xlabelstest, X_test)
#PREPARE TRAIN READINGS
#get activity names, subject data in one dataset without changing row order
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")
xlabels2 <- join(y_train, activity)
xlabelstrain <- cbind(xlabels2, subject_train)
colnames(xlabelstrain) <- c("ActivityCode", "Activity", "Subject")

#READ TRAIN READINGS
X_train <- read.table("./train/X_train.txt")
#Assign Columns names and add Activity and Subject data
features <- read.table("features.txt")
colnames(X_train) <- features$V2
train <- cbind(xlabelstrain, X_train)

#Combine test and train data
testtrain <- rbind(test, train)
#get only mean and std columns
tidyData <- testtrain[, grep("Activity|Subject|mean|std", colnames(testtrain))]

tidyData2 <- aggregate(tidyData[, 4:82], list(Activity = tidyData$Activity, Subject = tidyData$Subject), mean)


