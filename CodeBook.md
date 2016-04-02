# Code Book
This CodeBook describes the code located in `run_analysis.R`

The Code is split up into 6 sections:
* Fundamentals: Setting WD and Downloading Files
* Step 1: Reading in and Merging Datasets
* Step 2: Extracting Mean and Standard Deviation Measures
* Step 3: Adding Descriptive Names to the Activities
* Step 4: Labelling Variable Names
* Step 5: Creating a Tidy Dataset

## Fundamentals
* Sets the Working Directory
* Creates Folder if Non-Existent and Downloads File to Folder
* Unzips File

## Step 1: Reading in and Merging Datasets
* Read in and Merge Subject Related Data Files using `read.table` and `rbind`
* Read in and Merge Activity Related Data Files using `read.table` and `rbind`
* Read in and Merge Feature Related Data Files using `read.table` and `rbind`
* Labelling and Final Merger using `names` and `cbind`

## Step 2: Extracting Mean and Standard Deviation Measures
* Acquire Colums with Mean() or STD() using `grep` 
* Update FullData using `subset`

## Step 3: Adding Descriptive Names to the Activities
* Read in Activity Labels using `read.table`
* Update FullData using `subset`

## Step 4: Labelling Variable Names
* Substitute t and f values at the beginning of the line with Time and Freq Names using `gsub` and `names`

## Step 5: Creating a Tidy Dataset
* Create Tidy Dataset using `aggregate`, `order`, and `write.table`
