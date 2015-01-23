# Getting-and-Cleaning-Data-Course
Project for the Getting and Cleaning Data Coursera Course

# Introduction

This depository contains all the code and documentation files for the course project assigned in the "Getting and Cleaning Data" course available on the Coursera site.

# The project

The project consisted in:
1. To download the data sets collected during the Human Activity Recognition Using Smartphones experiment
2. To merge the training and the test sets to create one data set.
3. To extracts only the measurements on the mean and standard deviation for each measurement.
4. To use descriptive activity names to name the activities in the data set
5. to appropriately label the data set with descriptive variable names 
6. To creates a second, independent tidy data set with the average of each variable for each activity and each subject

# The files

run_analysis.r contains the r code to clean the data and perform the requested analysis

CodeBook.md decribes all the variables in the original data set and all the transformation applyed to clean the data and perform the requested analysis

tidydata.txt contains the cleaned data set created in the step 6.

# Instructions
Download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Run the run_analysis.r code : it will generate a tidydata.txt data table
