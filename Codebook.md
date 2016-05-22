#Codebook

The script Run_Analysis.R provides to tidy Datasets (tidyData and tidyData2)
Following are steps taken in the script to get these Datasets from the raw data -
* First prepare Test data
    1. File "activity_labels.txt" contains Activity names corresponding to their codes 1,2,3..
    2. File "y_test.txt" has corresponding activity information for the 2947 Obs in "X_test.txt"
    3. Combine "activity_labels" and "y_test" to get the names of Activities for 2947 Obs
    4. To this add "subject_test.txt" which has Subject info for the 2947 Obs. So now have Activity and Subject information for the 2947 Obs. Lets call this xlabelstest. 
    5. "features.txt" has the names fo the 561 variable names of "X_test". Add column names for "X_test" from "features".
    6. Add columns ActivityCode, Activity, Subject columns of xlabelstest to X_test. And we have dataset with readable column and row names.
* Carry the above steps for Train data
* Combine Test and Train data to get 1 dataset having all data. Select only Variables with names containing "mean" and "std" in them. This is tidyData dataset.
* Use tidyData to Group the Obs by Activity and Subject. This is second dataset tidyData2.

##Variables in dataset tidyData

ActivityCode
    This is the code for the activity. Example 1 - Walking.
    
Activity
    Activity performed in the Observation.

Subject
    Subject who performed the activity in the Observation.
    
And below are the mean and standard readings of triaxial acceleration and angular velocity from gyroscope.
tBodyAcc-mean()-X              
tBodyAcc-mean()-Y               tBodyAcc-mean()-Z              
tBodyAcc-std()-X                tBodyAcc-std()-Y               
tBodyAcc-std()-Z                tGravityAcc-mean()-X           
tGravityAcc-mean()-Y            tGravityAcc-mean()-Z           
tGravityAcc-std()-X             tGravityAcc-std()-Y            
tGravityAcc-std()-Z             tBodyAccJerk-mean()-X          
tBodyAccJerk-mean()-Y           tBodyAccJerk-mean()-Z          
tBodyAccJerk-std()-X            tBodyAccJerk-std()-Y           
tBodyAccJerk-std()-Z            tBodyGyro-mean()-X             
tBodyGyro-mean()-Y              tBodyGyro-mean()-Z             
tBodyGyro-std()-X               tBodyGyro-std()-Y              
tBodyGyro-std()-Z               tBodyGyroJerk-mean()-X         
tBodyGyroJerk-mean()-Y          tBodyGyroJerk-mean()-Z         
tBodyGyroJerk-std()-X           tBodyGyroJerk-std()-Y          
tBodyGyroJerk-std()-Z           tBodyAccMag-mean()             
tBodyAccMag-std()               tGravityAccMag-mean()          
tGravityAccMag-std()            tBodyAccJerkMag-mean()         
tBodyAccJerkMag-std()           tBodyGyroMag-mean()            
tBodyGyroMag-std()              tBodyGyroJerkMag-mean()        
tBodyGyroJerkMag-std()          fBodyAcc-mean()-X              
fBodyAcc-mean()-Y               fBodyAcc-mean()-Z              
fBodyAcc-std()-X                fBodyAcc-std()-Y               
fBodyAcc-std()-Z                fBodyAcc-meanFreq()-X          
fBodyAcc-meanFreq()-Y           fBodyAcc-meanFreq()-Z          
fBodyAccJerk-mean()-X           fBodyAccJerk-mean()-Y          
fBodyAccJerk-mean()-Z           fBodyAccJerk-std()-X           
fBodyAccJerk-std()-Y            fBodyAccJerk-std()-Z           
fBodyAccJerk-meanFreq()-X       fBodyAccJerk-meanFreq()-Y      
fBodyAccJerk-meanFreq()-Z       fBodyGyro-mean()-X             
fBodyGyro-mean()-Y              fBodyGyro-mean()-Z             
fBodyGyro-std()-X               fBodyGyro-std()-Y              
fBodyGyro-std()-Z               fBodyGyro-meanFreq()-X         
fBodyGyro-meanFreq()-Y          fBodyGyro-meanFreq()-Z         
fBodyAccMag-mean()              fBodyAccMag-std()              
fBodyAccMag-meanFreq()          fBodyBodyAccJerkMag-mean()     
fBodyBodyAccJerkMag-std()       fBodyBodyAccJerkMag-meanFreq() 
fBodyBodyGyroMag-mean()         fBodyBodyGyroMag-std()         
fBodyBodyGyroMag-meanFreq()     fBodyBodyGyroJerkMag-mean()    
fBodyBodyGyroJerkMag-std()      fBodyBodyGyroJerkMag-meanFreq()

##Variables in dataset tidyData2

Group1
    This is Group By Activity column
    
Group2
    This is the Group By Subject column

And below are the mean and standard readings of triaxial acceleration and angular velocity from gyroscope.
tBodyAcc-mean()-X              
tBodyAcc-mean()-Y               tBodyAcc-mean()-Z              
tBodyAcc-std()-X                tBodyAcc-std()-Y               
tBodyAcc-std()-Z                tGravityAcc-mean()-X           
tGravityAcc-mean()-Y            tGravityAcc-mean()-Z           
tGravityAcc-std()-X             tGravityAcc-std()-Y            
tGravityAcc-std()-Z             tBodyAccJerk-mean()-X          
tBodyAccJerk-mean()-Y           tBodyAccJerk-mean()-Z          
tBodyAccJerk-std()-X            tBodyAccJerk-std()-Y           
tBodyAccJerk-std()-Z            tBodyGyro-mean()-X             
tBodyGyro-mean()-Y              tBodyGyro-mean()-Z             
tBodyGyro-std()-X               tBodyGyro-std()-Y              
tBodyGyro-std()-Z               tBodyGyroJerk-mean()-X         
tBodyGyroJerk-mean()-Y          tBodyGyroJerk-mean()-Z         
tBodyGyroJerk-std()-X           tBodyGyroJerk-std()-Y          
tBodyGyroJerk-std()-Z           tBodyAccMag-mean()             
tBodyAccMag-std()               tGravityAccMag-mean()          
tGravityAccMag-std()            tBodyAccJerkMag-mean()         
tBodyAccJerkMag-std()           tBodyGyroMag-mean()            
tBodyGyroMag-std()              tBodyGyroJerkMag-mean()        
tBodyGyroJerkMag-std()          fBodyAcc-mean()-X              
fBodyAcc-mean()-Y               fBodyAcc-mean()-Z              
fBodyAcc-std()-X                fBodyAcc-std()-Y               
fBodyAcc-std()-Z                fBodyAcc-meanFreq()-X          
fBodyAcc-meanFreq()-Y           fBodyAcc-meanFreq()-Z          
fBodyAccJerk-mean()-X           fBodyAccJerk-mean()-Y          
fBodyAccJerk-mean()-Z           fBodyAccJerk-std()-X           
fBodyAccJerk-std()-Y            fBodyAccJerk-std()-Z           
fBodyAccJerk-meanFreq()-X       fBodyAccJerk-meanFreq()-Y      
fBodyAccJerk-meanFreq()-Z       fBodyGyro-mean()-X             
fBodyGyro-mean()-Y              fBodyGyro-mean()-Z             
fBodyGyro-std()-X               fBodyGyro-std()-Y              
fBodyGyro-std()-Z               fBodyGyro-meanFreq()-X         
fBodyGyro-meanFreq()-Y          fBodyGyro-meanFreq()-Z         
fBodyAccMag-mean()              fBodyAccMag-std()              
fBodyAccMag-meanFreq()          fBodyBodyAccJerkMag-mean()     
fBodyBodyAccJerkMag-std()       fBodyBodyAccJerkMag-meanFreq() 
fBodyBodyGyroMag-mean()         fBodyBodyGyroMag-std()         
fBodyBodyGyroMag-meanFreq()     fBodyBodyGyroJerkMag-mean()    
fBodyBodyGyroJerkMag-std()      fBodyBodyGyroJerkMag-meanFreq()
