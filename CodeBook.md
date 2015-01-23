#Getting and Cleaning Data Course Project

This analysis is performed on data collected from the accelerometers of a smartphone (a Samsung Galaxy S) in an experiment on human activities of daily living (ADL). 30 volonteers carried a a waist-mounted smartphone with embedded inertial sensors and have performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The accelerometers measured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The aim of this analysis was to extract data about the mean and the standard deviation of each measurement and calculate the mean of each measurement for each activity and for each subject.

#The data source

The original data tables are at  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip   
The description of dataset is at  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

#The data

The dataset includes:

+ a README.txt file  
+ a features_info.txt file : a description about the measurements taken by the accelerometers and some transformations (mean, standar deviation, 		etc)  
+ a train/X_train.txt file : the training set with only the measurements taken by the accelerometers  
+ a train/y_train.txt file : the data table with the numerical labels of the activities for the measurements in the training set  
+ a test/X_test.txt file : the testing set with only the measurement taken by the accelerometers  
+ a test/y_test.txt file : the data table with the numerical labels of the activities for the measurements in the training set  
+ a feature.txt file : a list of the labels of the measurements taken by the accelerometers, corresponding to the columns of both the training and 		testing sets  
+ an activity_labels.txt file : the list of the six activities  
+ a train/subject_train.txt file : a list that identifies the subjects of the activities measured in the training set  
+ a test/subject_test.txt : a list that identifies the subjects of the activities measured in the testing set  

For both the testing and training sets there are also  
+ train/Inertial Signals/total_acc_x_train.txt and test/Inertial Signals/total_acc_x_test.txt : files with the total acceleration signal from the accelerometers X axis in standard gravity g units. Every row is a 128 element vector. Similar data tables available - with the names properly changed - for the y and the z axis

+ train/Inertial Signals/body_acc_x_train.txt and test/Inertial Signals/body_acc_x_test.txt : files with the body acceleration signal, i.e. the total acceleration signal minus the gravity acceleration

+ train/Inertial Signals/body_gyro_x_train.txt and test/Inertial Signals/body_gyro_x_test.txt : files with the angular velocity vector measured by the gyroscop for each window sample in radians/second

#The subject and the activities
The 30 subjects and the six activities are identified in the raw data by numbers (respectively 1 to 30 an 1 to 6)

#The measurements
The main measurements, listed in the feature.txt file, are:

tBodyAcc-for the X, Y, and Z axis (XYZ)  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

For each measurement were estimated :

mean(): Mean value  
std(): Standard deviation  
mad(): Median absolute deviation   
max(): Largest value in array  
min(): Smallest value in array  
sma(): Signal magnitude area  
energy(): Energy measure. Sum of the squares divided by the number of values  
iqr(): Interquartile range  
entropy(): Signal entropy  
arCoeff(): Autorregresion coefficients with Burg order equal to 4  
correlation(): correlation coefficient between two signals  
maxInds(): index of the frequency component with largest magnitude  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
skewness(): skewness of the frequency domain signal  
kurtosis(): kurtosis of the frequency domain signal  
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window  
angle(): Angle between to vectors  

Additional vectors were obtained by averaging the signals in a signal window sample. These are used on the angle() variable:  

gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  

#Cleaning the data

The project requested:  

1. To merge the training and the test sets to create one data set  
2. To extracte only the measurements on the mean and standard deviation for each measurement   
3. To properly name, with descriptive names, the activities in the data set  
4. To appropriately label all the rows and the columns in the data set with descriptive variable names  
5. To create a second, independent tidy data set with the average of each variable for each activity and each subject and saved it in the tydidata.txt file  

#The run_analysis.r code

In the run_analysis.r file I

1. Downloaded both the training and the testing data
2. Downloaded the labels of the activities measured in both the training and testing data
3. Downloaded the subjects measured in both the training and testing data
4. Bound the vector of subjects, the vector of activities and the measurament set for both the training and the testing data
5. Merged the training and the testing sets so bound
6. Extracted the mean and standard deviation measurements
7. Appropriately named all the columns of the data table (subject, activities, measurements)
8. Appropriately labelled each activity measured for each subject
9. Created a tidy data set with the average of each variable for each activity and each subject

