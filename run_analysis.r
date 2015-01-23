setwd("./UCI HAR Dataset")
#downloading training set
datatrain <- read.table("./train/X_train.txt")
#downloading testing set
datatest <- read.table("./test/X_test.txt")
#downloading labels of activities
labeltrain <- read.table("./train/y_train.txt")
labeltest <- read.table("./test/y_test.txt")
#downloading table of subject
subjecttrain <- read.table("./train/subject_train.txt")
subjecttest <- read.table("./test/subject_test.txt")
#transforming tables of activities and subjects into vectors 
labeltrain <- as.vector(labeltrain)
labeltest <- as.vector(labeltest)
subjecttrain <- as.vector(subjecttrain)
subjecttest <- as.vector(subjecttest)
#binding subject and activity vectors to training and testing sets
data1 <- cbind(labeltrain, datatrain)
data1 <- cbind(subjecttrain, data1)
data2 <- cbind(labeltest, datatest)
data2 <- cbind(subjecttest, data2)
#changing names of subject and activity columns
names(data1)[1] <- "subject"
names(data1)[2] <- "label"
names(data2)[1] <- "subject"
names(data2)[2] <- "label"
#merging training and testing sets
dataproject <- merge(data1, data2, all=T)
#downloading features set
features <- read.table(".features.txt")
features$V2 <- as.vector(features$V2)
#extracting measurements on the mean and standard deviation
projectFeatures <- features[grep("mean()|std()", features$V2), 1]
projectFeatures <- projectFeatures + 2
tempFeatures <- append(1:2, projectFeatures)
dataproject <- dataproject[, tempFeatures]
#naming the measurements
projectFeatures <- projectFeatures - 2
dataNames <- append(c("subject", "label"), features$V2[features$V1 %in% projectFeatures])
names(dataproject) <- dataNames
#downloading activities names
activityLabels <- read.table("./activity_labels.txt")
#naming activities in the data set
number <- 1
for (Label in activityLabels$V2)
{dataproject$label <- gsub(number, Label, dataproject$label)
 number <- number +1}
#creating and writing a tidy data set
tidydata <- aggregate(dataproject[,3:81], by=list( activity=dataproject$label, subject=dataproject$subject), mean)
write.table(tidydata, "tidydata.txt", row.name=F)
