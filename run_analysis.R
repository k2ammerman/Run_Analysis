##
## Verify that data directory structure and files exist, if they do not exist, stop.
##
if(!file.exists("./data")){stop("This script requires the project data to be extracted into a './data/ directory.")}
if(!file.exists("./data/test/subject_test.txt")){stop("Expected file './data/test/subject_test.txt' was not found")}
if(!file.exists("./data/test/X_test.txt")){stop("Expected file './data/test/X_test.txt' was not found")}
if(!file.exists("./data/test/Y_test.txt")){stop("Expected file './data/test/Y_test.txt' was not found")}
if(!file.exists("./data/train/subject_train.txt")){stop("Expected file './data/train/subject_train.txt' was not found")}
if(!file.exists("./data/train/X_train.txt")){stop("Expected file './data/train/X_train.txt' was not found")}
if(!file.exists("./data/train/Y_train.txt")){stop("Expected file './data/train/Y_train.txt' was not found")}
if(!file.exists("./data/features.txt")){stop("Expected file './data/features.txt' was not found")}
if(!file.exists("./data/activity_labels.txt")){stop("Expected file './data/activity_labels.txt' was not found")}


################################################################################
## Step #1 - Merge the training and the test sets to create one data set.     ##
################################################################################
##
## Read the source data files into data frames 
##
testDataSubject <- read.table("./data/test/subject_test.txt")    ## 2947 obs. of 1 variables
testDataX <- read.table("./data/test/X_test.txt")			           ## 2947 obs. of 561 variables
testDataY <- read.table("./data/test/Y_test.txt")			           ## 2947 obs. of 1 variables

trainDataSubject <- read.table("./data/train/subject_train.txt") ## 7352 obs. of 1 variables
trainDataX <- read.table("./data/train/X_train.txt")			       ## 7352 obs. of 561 variables
trainDataY <- read.table("./data/train/Y_train.txt")			       ## 7352 obs. of 1 variables

featuresData <- read.table("./data/features.txt")			           ##  561 obs. of 2 variables
activityData <- read.table("./data/activity_labels.txt")		     ##    6 obs. of 2 variables


##
## Attache column names data to sets
##
names(testDataX) <- featuresData[,"V2"]
names(trainDataX) <- featuresData[,"V2"]

names(testDataSubject) <- "Subject"
names(trainDataSubject) <- "Subject"

names(testDataY) <- "activity_class"
names(trainDataY) <- "activity_class"

names(activityData) <- c("activity_class","activity")


##
## Attach Subject column to data sets
##
testDataX <- cbind(testDataX,testDataSubject)
trainDataX <- cbind(trainDataX,trainDataSubject)


##
## Attach activity_label column to data sets
##
testDataX <- cbind(testDataX,testDataY)
trainDataX <- cbind(trainDataX,trainDataY)


##
## Combined test and traning data sets into a single set
##
combinedData <- rbind(testDataX,trainDataX)


################################################################################
## Step #2 - Extract only the measurements on the mean and standard           ##
##           deviation for each measurement                                   ##
################################################################################
##
## reduce working set to columns containing measurment mean and Std
##
reducedSetData <- combinedData[,c(1:6,41:46,81:86,121:126,161:166,201,202,214,215
                                  ,227,228,240,241,253,254,266:271,345:350,424:429
                                  ,503,504,516,517,529,530,542,543,562,563)]


################################################################################
## Step #3 - Use descriptive activity names to name the activities            ##
##           in the data set                                                  ##
################################################################################
##
## Merge Activity set to combined data sets
##
reducedSetData <- merge(activityData, reducedSetData)


################################################################################
## Step #4 - Appropriately label the data set with descriptive                ##
##           variable names.                                                  ##
################################################################################
##
## Extract column names
##
expressiveColumnNames <- names(reducedSetData)

##
## alter column names to descriptive names
##
expressiveColumnNames <- gsub("BodyBody","Body",expressiveColumnNames)
expressiveColumnNames <- gsub("tBodyAcc","timeBodyAcceleration",expressiveColumnNames)
expressiveColumnNames <- gsub("fBodyAcc","frequencyBodyAcceleration",expressiveColumnNames)


expressiveColumnNames <- gsub("tGravityAcc","timeGravityAcceleration",expressiveColumnNames)
expressiveColumnNames <- gsub("fGravityAcc","frequencyGravityAcceleration",expressiveColumnNames)


expressiveColumnNames <- gsub("tBodyGyro","timeBodyGyroscopic",expressiveColumnNames)
expressiveColumnNames <- gsub("fBodyGyro","frequencyBodyGyroscopic",expressiveColumnNames)

expressiveColumnNames <- gsub("-std[(][])]","StandardDeviation",expressiveColumnNames)
expressiveColumnNames <- gsub("-mean[(][)]","Mean",expressiveColumnNames)
expressiveColumnNames <- gsub("Mag","Magnitude",expressiveColumnNames)

expressiveColumnNames <- gsub("-X","AxisX",expressiveColumnNames)
expressiveColumnNames <- gsub("-Y","AxisY",expressiveColumnNames)
expressiveColumnNames <- gsub("-Z","AxisZ",expressiveColumnNames)

##
## Set descriptive names to column names
##
names(reducedSetData) <- expressiveColumnNames

##
##reorder columns and drop the "activity_class" column, it is not needed
##
intermediateDataSet <- reducedSetData[,c(69,2:68 )]

################################################################################
## Step #5 - Create a second, independent tidy data set with the average      ##
##           of each variable for each subject and each activity.             ##
################################################################################
##
##
##
tdSet <- aggregate(intermediateDataSet[c(3:68)],list(subject=intermediateDataSet$Subject,activity=intermediateDataSet$activity), FUN=mean, na.rm=TRUE)


