---
title: "Readme"
author: "marcopolo88"
date: "8/8/2019"
---

# Getting and Cleaning Data Course Project

## Assignment:

Create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Usage

-unzip the original data and copy the directory UCI HAR Dataset to the cloned repository root directory</br>
-Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</br>
-open a R console and set the working directory to the repository root (use setwd())</br>
-Run script</br>
```
run_analysis.R
```
-Please consult Codebook.md for the data columns</br>

## Requirements

```
R 3.6.0
library data.table
library readr
```