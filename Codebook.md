---
title: "Codebook"
author: "marcopolo88"
date: "8/8/2019"
output: html_document
---

# Original Dataset CodeBook Section

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ <br />
tGravityAcc-XYZ<br />
tBodyAccJerk-XYZ<br />
tBodyGyro-XYZ<br />
tBodyGyroJerk-XYZ<br />
tBodyAccMag<br />
tGravityAccMag<br />
tBodyAccJerkMag<br />
tBodyGyroMag<br />
tBodyGyroJerkMag<br />
fBodyAcc-XYZ<br />
fBodyAccJerk-XYZ<br />
fBodyGyro-XYZ<br />
fBodyAccMag<br />
fBodyAccJerkMag<br />
fBodyGyroMag<br />
fBodyGyroJerkMag<br />

The set of variables that were estimated from these signals are: 

mean(): Mean value<br />
std(): Standard deviation<br />
mad(): Median absolute deviation <br />
max(): Largest value in array<br />
min(): Smallest value in array<br />
sma(): Signal magnitude area<br />
energy(): Energy measure. Sum of the squares divided by the number of values. <br />
iqr(): Interquartile range <br />
entropy(): Signal entropy<br />
arCoeff(): Autorregresion coefficients with Burg order equal to 4<br />
correlation(): correlation coefficient between two signals<br />
maxInds(): index of the frequency component with largest magnitude<br />
meanFreq(): Weighted average of the frequency components to obtain a mean frequency<br />
skewness(): skewness of the frequency domain signal <br />
kurtosis(): kurtosis of the frequency domain signal <br />
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.<br />
angle(): Angle between to vectors.<br />

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:<br /><br />

gravityMean<br />
tBodyAccMean<br />
tBodyAccJerkMean<br />
tBodyGyroMean<br />
tBodyGyroJerkMean<br />

## The data source

* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## CodeBook Section For this 'Getting and Cleaning Data Course Project' Assignment

## Identifier

 - `idsubject` - `integer` - The id of the subject
   - 1 - 30

## Activity   
   
 - `activity` - `character` - Type of activity that the subject was performing
   - Walking
   - Walking Upstairs
   - Walking Downstairs
   - Sitting
   - Standing
   - Laying

## Measurements

86 `numeric` type variables with `mean` values arranged by test subject and activity in the tidied data set

"Mean.timeBodyAcc-mean()-X"<br />
"Mean.timeBodyAcc-mean()-Y"<br />
"Mean.timeBodyAcc-mean()-Z"<br />
"Mean.timeBodyAcc-std()-X"<br />
"Mean.timeBodyAcc-std()-Y"<br />
"Mean.timeBodyAcc-std()-Z"<br />
"Mean.timeGravityAcc-mean()-X"<br />
"Mean.timeGravityAcc-mean()-Y"<br />
"Mean.timeGravityAcc-mean()-Z"<br />
"Mean.timeGravityAcc-std()-X"<br />
"Mean.timeGravityAcc-std()-Y"<br />
"Mean.timeGravityAcc-std()-Z"<br />
"Mean.timeBodyAccJerk-mean()-X"<br />
"Mean.timeBodyAccJerk-mean()-Y"<br />
"Mean.timeBodyAccJerk-mean()-Z"<br />
"Mean.timeBodyAccJerk-std()-X"<br />
"Mean.timeBodyAccJerk-std()-Y"<br />
"Mean.timeBodyAccJerk-std()-Z"<br />
"Mean.timeBodyGyro-mean()-X"<br />
"Mean.timeBodyGyro-mean()-Y"<br />
"Mean.timeBodyGyro-mean()-Z"<br />
"Mean.timeBodyGyro-std()-X"<br />
"Mean.timeBodyGyro-std()-Y"<br />
"Mean.timeBodyGyro-std()-Z"<br />
"Mean.timeBodyGyroJerk-mean()-X"<br />
"Mean.timeBodyGyroJerk-mean()-Y"<br />
"Mean.timeBodyGyroJerk-mean()-Z"<br />
"Mean.timeBodyGyroJerk-std()-X"<br />
"Mean.timeBodyGyroJerk-std()-Y"<br />
"Mean.timeBodyGyroJerk-std()-Z"<br />
"Mean.timeBodyAccMag-mean()"<br />
"Mean.timeBodyAccMag-std()"<br />
"Mean.timeGravityAccMag-mean()"<br />
"Mean.timeGravityAccMag-std()"<br />
"Mean.timeBodyAccJerkMag-mean()"<br />
"Mean.timeBodyAccJerkMag-std()"<br />
"Mean.timeBodyGyroMag-mean()"<br />
"Mean.timeBodyGyroMag-std()"<br />
"Mean.timeBodyGyroJerkMag-mean()"<br />
"Mean.timeBodyGyroJerkMag-std()"<br />
"Mean.freqBodyAcc-mean()-X"<br />
"Mean.freqBodyAcc-mean()-Y"<br />
"Mean.freqBodyAcc-mean()-Z"<br />
"Mean.freqBodyAcc-std()-X"<br />
"Mean.freqBodyAcc-std()-Y"<br />
"Mean.freqBodyAcc-std()-Z"<br />
"Mean.freqBodyAcc-meanFreq()-X"<br />
"Mean.freqBodyAcc-meanFreq()-Y"<br />
"Mean.freqBodyAcc-meanFreq()-Z"<br />
"Mean.freqBodyAccJerk-mean()-X"<br />
"Mean.freqBodyAccJerk-mean()-Y"<br />
"Mean.freqBodyAccJerk-mean()-Z"<br />
"Mean.freqBodyAccJerk-std()-X"<br />
"Mean.freqBodyAccJerk-std()-Y"<br />
"Mean.freqBodyAccJerk-std()-Z"<br />
"Mean.freqBodyAccJerk-meanFreq()-X"<br />
"Mean.freqBodyAccJerk-meanFreq()-Y"<br />
"Mean.freqBodyAccJerk-meanFreq()-Z"<br />
"Mean.freqBodyGyro-mean()-X"<br />
"Mean.freqBodyGyro-mean()-Y"<br />
"Mean.freqBodyGyro-mean()-Z"<br />
"Mean.freqBodyGyro-std()-X"<br />
"Mean.freqBodyGyro-std()-Y"<br />
"Mean.freqBodyGyro-std()-Z"<br />
"Mean.freqBodyGyro-meanFreq()-X"<br />
"Mean.freqBodyGyro-meanFreq()-Y"<br />
"Mean.freqBodyGyro-meanFreq()-Z"<br />
"Mean.freqBodyAccMag-mean()"<br />
"Mean.freqBodyAccMag-std()"<br />
"Mean.freqBodyAccMag-meanFreq()"<br />
"Mean.freqBodyAccJerkMag-mean()"<br />
"Mean.freqBodyAccJerkMag-std()"<br />
"Mean.freqBodyAccJerkMag-meanFreq()"<br />
"Mean.freqBodyGyroMag-mean()"<br />
"Mean.freqBodyGyroMag-std()"<br />
"Mean.freqBodyGyroMag-meanFreq()"<br />
"Mean.freqBodyGyroJerkMag-mean()"<br />
"Mean.freqBodyGyroJerkMag-std()"<br />
"Mean.freqBodyGyroJerkMag-meanFreq()"<br />
"Mean.angle(tBodyAccMean,gravity)"<br />
"Mean.angle(tBodyAccJerkMean),gravityMean)"<br />
"Mean.angle(tBodyGyroMean,gravityMean)"<br />
"Mean.angle(tBodyGyroJerkMean,gravityMean)"<br />
"Mean.angle(X,gravityMean)"<br />
"Mean.angle(Y,gravityMean)"<br />
"Mean.angle(Z,gravityMean)"<br />
