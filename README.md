# Getting And Cleaning Data Project
##Getting And Cleaning Data Project to tidy Human Activity Recognition Data

### Introduction
This Project has a Run_Analysis.R script file which prepares 2 sets of tidyData.
To run the script you need to perform following steps first -
* Set working directory to "UCI HAR Dataset" which is the unzipped folder of the data provided for the Project https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* install package dplyr

### How to script works?
The goal is provide Activity and Variable names to Test and Train Data. Then combine them and extract only mean and std variables. And also get another Dataset to get the average of variables for each Activity and each Subject.

Following are steps carried out in the Script -
* First prepare Test data
    1. File "activity_labels.txt" contains Activity names corresponding to their codes 1,2,3..
    2. File "y_test.txt" has corresponding activity information for the 2947 Obs in "X_test.txt"
    3. Combine "activity_labels" and "y_test" to get the names of Activities for 2947 Obs
    4. To this add "subject_test.txt" which has Subject info for the 2947 Obs. So now have Activity and Subject information for the 2947 Obs. Lets call this xlabelstest. 
    5. "features.txt" has the names fo the 561 variable names of "X_test". Add column names for "X_test" from "features".
    6. Add columns ActivityCode, Activity, Subject columns of xlabelstest to X_test. And we have dataset with readable column and row names.
* Carry the above steps for Train data
* Combine Test and Train data to get 1 dataset having all data. Select only Variables with names containing "mean" and "std" in them. This is tidyData dataset.
* Use tidyData to Group the Obs by Activity and Subject and get mean of the Variables for the Groups. This is second dataset tidyData2.


