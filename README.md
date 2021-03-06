# Getting and Cleaning Data Course Project - Coursera

## Project Description
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

## Repository Contents
* `CodeBook.MD` which specifies the variables included and the transformation made on the original data.
* `run_analysis.R` which has the code that reads, cleans and outputs a tidy dataset.
* `TidyData.txt` which has the output dataset that has been made neat and tidy.
* `README.MD` which has an overview of the project description, the repository contents and the sources of the original data.

## Script Workings and Connections

The Code is split up into 6 sections:
* Fundamentals: Setting WD and Downloading Files
* Step 1: Reading in and Merging Datasets
* Step 2: Extracting Mean and Standard Deviation Measures
* Step 3: Adding Descriptive Names to the Activities
* Step 4: Labelling Variable Names
* Step 5: Creating a Tidy Dataset

### Fundamentals
* Sets the Working Directory
* Creates Folder if Non-Existent and Downloads File to Folder
* Unzips File

### Step 1: Reading in and Merging Datasets
* Read in and Merge Subject Related Data Files using `read.table` and `rbind`
* Read in and Merge Activity Related Data Files using `read.table` and `rbind`
* Read in and Merge Feature Related Data Files using `read.table` and `rbind`
* Labelling and Final Merger using `names` and `cbind`

### Step 2: Extracting Mean and Standard Deviation Measures
* Acquire Colums with Mean() or STD() using `grep` 
* Update FullData using `subset`

### Step 3: Adding Descriptive Names to the Activities
* Read in Activity Labels using `read.table`
* Update FullData using `subset`

### Step 4: Labelling Variable Names
* Substitute t and f values at the beginning of the line with Time and Freq Names using `gsub` and `names`

### Step 5: Creating a Tidy Dataset
* Create Tidy Dataset using `aggregate`, `order`, and `write.table`
