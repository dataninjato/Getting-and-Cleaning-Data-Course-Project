#---
#title: "run_analysis.R"
#author: "marcopolo88"
#date: "8/8/2019"
#output: R & files
#---

library(readr)
library(data.table)

#  1. Merges the training and the test sets to create one data set.

trainsub <- read.table('UCI HAR Dataset\\train\\subject_train.txt')
trainy <- read.table('UCI HAR Dataset\\train\\Y_train.txt')
trainx <- fread(file='UCI HAR Dataset\\train\\X_train.txt', header = FALSE, sep = " ")

testsub <- read.table('UCI HAR Dataset\\test\\subject_test.txt')
testy <- read.table('UCI HAR Dataset\\test\\Y_test.txt')
testx <- fread(file='UCI HAR Dataset\\test\\X_test.txt', header = FALSE, sep = " ")

# glue columns
train <-cbind(trainsub, trainy, trainx)
test <-cbind(testsub, testy, testx)
# clear old data objects
rm(list = c('trainsub', 'trainy', 'trainx'))
rm(list = c('testsub', 'testy', 'testx'))

# glue rows
df <- rbind(test,train)
# clear old data objects
rm(train, test)

# create column lables
rm(nam)
nam <- c('idsubject', 'idactivity')

dfnames <- fread('UCI HAR Dataset\\features.txt')
nn <- c(dfnames[,2])
rm(dfnames)

nam <- c(nam, unlist(nn))
rm(nn)

colnames(df) <- nam #vector

#  4. Appropriately labels the data set with descriptive variable names.
#  However too long names are not my preference, so this compromise

#colnames(df)<-gsub("Mag", "Magnitude", colnames(df))
colnames(df)<-gsub("BodyBody", "Body", colnames(df))
colnames(df)<-gsub("^t", "time", colnames(df))
colnames(df)<-gsub("^f", "freq", colnames(df))
#colnames(df)<-gsub("Acc", "Accelerometer", colnames(df))
#colnames(df)<-gsub("Gyro", "Gyroscope", colnames(df))

#  2. Extracts only the measurements on the mean and standard deviation for each measurement.

# as per assignment only data columns concerning 'mean' or 'standard deviation' are to be kept
# identifiying those columns
cols <- grep("(mean|std)", colnames(df), ignore.case = TRUE)
# reducing all but column 1, 2 and identified cols
reduced.df <- df[,c(1,2,cols)]
# clear memory of original bloated df
rm(df)

#  3. Uses descriptive activity names to name the activities in the data set
# activity labels
act <- fread(file='UCI HAR Dataset\\activity_labels.txt', header = FALSE, sep = " ")
colnames(act)[1] <- 'idactivity'

# lookup label for the id and substitute id column with the more descriptive label list
temp <- reduced.df[,2]
lables <- sapply(temp, function(x) act$V2[match(x, act$idactivity)])
reduced.df[,2] <- lables
rm(act)

# adjust label to changed data type (not id anymore)
colnames(reduced.df)[2] <- 'activity'

# step 5: create a second, independent tidy data set with the average of each variable 
# for each activity and each subject.

#averages.df <- reduced.df %>% group_by(idsubject, activity) %>% dplyr::summarize(Mean = mean(.))
averages.df <- aggregate(. ~idsubject + activity, reduced.df, mean)
# adjust colnames to the fact that all columns have averaged mean values and are clearly distinguishable
colnames(averages.df) <- paste("Mean", colnames(averages.df), sep = ".")
colnames(averages.df)[2] <- 'activity'
colnames(averages.df)[1] <- 'idsubject'

# Write the Mean Tidy Data Set to file for the upload course submission
write.table(averages.df, "averagedTidySet.txt", row.name=FALSE) 