### Fundamentals ###
# Set Working Directory
setwd("D:/Coursera/Getting and Cleaning data")

# Download File to Data Folder
if(!file.exists("./data")){dir.create("./data")}
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL,destfile="./data/HAR Data.zip")

# Unzip File
unzip(zipfile="./data/HAR Data.zip",exdir="./data")


### Step 1 - Merge Training and Test Data Sets to Create one Dataset ###
# Read in and Merge Subject Related Data Files
dataSubTest  <- read.table(file.path("./data/UCI HAR Dataset", "test" , "subject_test.txt"),header = FALSE)
dataSubTrain <- read.table(file.path("./data/UCI HAR Dataset", "train", "subject_train.txt"),header = FALSE)
dataSub <- rbind(dataSubTest, dataSubTrain)

# Read in and Merge Activity Related Data Files
dataActTest  <- read.table(file.path("./data/UCI HAR Dataset", "test" , "Y_test.txt" ),header = FALSE)
dataActTrain <- read.table(file.path("./data/UCI HAR Dataset", "train", "Y_train.txt"),header = FALSE)
dataAct <- rbind(dataActTest, dataActTrain)

# Read in and Merge Feature Related Data Files
dataFeatTest  <- read.table(file.path("./data/UCI HAR Dataset", "test" , "X_test.txt" ),header = FALSE)
dataFeatTrain <- read.table(file.path("./data/UCI HAR Dataset", "train", "X_train.txt"),header = FALSE)
dataFeat <- rbind(dataFeatTest, dataFeatTrain)
dataFeatLabels <- read.table(file.path("./data/UCI HAR Dataset", "features.txt"), header = FALSE)

# Labelling and Final Merger
names(dataSub) <- c("Subject")
names(dataAct) <- c("Activity")
names(dataFeat) <- dataFeatLabels$V2
FullData <- cbind(dataSub, dataAct, dataFeat)


### Step 2 - Extract only Mean and Standard Deviation for each Measurement ###
# Acquire Colums with Mean() or STD()
MeanSTD <- dataFeatLabels$V2[grep("(mean|std)\\(\\)", dataFeatLabels$V2)]

# Update FullData
subsetLabels <- c("Subject", "Activity", as.character(MeanSTD))
FullData <- subset(FullData, select = subsetLabels)


### Step 3 - Use Descriptive Names to Name Activities in the Dataset ###
# Read in Activity Labels
dataActLabels <- read.table(file.path("./data/UCI HAR Dataset", "activity_labels.txt"), header = FALSE)

# Update FullData
dataActLabels <- as.character(dataActLabels$V2)
FullData$Activity <- dataActLabels[FullData$Activity]


### Step 4 - Appropriately Label the Data Set with Descriptive Variable Names ###
# Substitute t and f values at the beginning of the line with Time and Freq Names
names(FullData) <- gsub("^t", "Time", names(FullData))
names(FullData) <- gsub("^f", "Freq", names(FullData))


### Step 5 - Create Second Independent Tidy Dataset with Average per Variable per Activity per Subject ###
library(plyr)

# Create Tidy Dataset
TidyData <- aggregate(. ~Subject + Activity, FullData, mean)
TidyData <- TidyData[order(TidyData$Subject,TidyData$Activity),]
write.table(TidyData, file="TidyData.txt", row.name = FALSE)
