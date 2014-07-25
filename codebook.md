### The codebook file contains the explanation of `run_analysis()` function and description of variables in the `final_tidy_data.txt` file.

#### Explanation of run_analysis.R

The function `run_analysis` accepts the working directory `workingdir` parameter as an input. The parameter has the current directory as the default value.

1.  It sets the working directory
2.  Loads the data.table library
3.  Reads the activity_lablels.txt file into `activity_labels` data table and names the two columns as `activity_id` and `activity_name`
4.  Read the features.txt file into `features` data table and names the two columns as `feature_id` and `feature_desc`
5.  Read the X test and train data and combine them into a `Xcombined` data table. Name the columns in the data table from the `feature_desc` column in the `features` data table
6.  Select only the columns that are mean or standard deviation measurements from the `Xcombined` data table by searching for mean or std pattern in the column names. Name the resulting set as `meanstd`
7.  Read the y test and train data and combine them into `ycombined` data table. Name the column in the data table as `activity_id`
8.  Read the subject test and train data and combine them into `subjectcombined` data table. Name the column in the data table as `subject_id`
9.  Combine the `meanstd`, `ycombined` and `subjectcombined` into a single data table called `cd`
10.  Merge `cd` and `activity_labels` on `activity_id`
11.  Remove the activity_id column as we have the activity_name and name it as `cdt`
12.  Write `cdt` to a file called `final_labeled_data.txt` with TAB as delimiter
13.  Create a new tidy data set by activity_name and subject and mean of the other variables with TAB as delimiter. Call this the `final_tidy_data.txt

Running run_analysis from R console should produce two output files that are TAB delimited in the working directory. The files are `final_labeled_data.txt` and `final_tidy_data.txt`

#### Activity Names
* **WALKING**
* **WALKING_UPSTAIRS**
* **WALKING_DOWNSTAIRS**
* **SITTING**
* **STANDING**
* **LAYING**

#### Subject IDs
* 1 to 30

#### Variable Names (Column names in tidy data set

Column Name |Description
----------------|---------------
**tBodyAcc-mean()-X**|Mean of time domain body acceleration axial signal in X direction
**tBodyAcc-mean()-Y**|Mean of time domain body acceleration axial signal in Y direction
**tBodyAcc-mean()-Z**|Mean of time domain body acceleration axial signal in Z direction
**tBodyAcc-std()-X**|Standard deviation of time domain body acceleration axial signal in X direction
**tBodyAcc-std()-Y**|Standard deviation of time domain body acceleration axial signal in Y direction
**tBodyAcc-std()-Z**|Standard deviation of time domain body acceleration axial signal in Z direction
**tGravityAcc-mean()-X**|Mean of time domain body gravity axial signal in X direction
**tGravityAcc-mean()-Y**|Mean of time domain body gravity axial signal in Y direction
**tGravityAcc-mean()-Z**|Mean of time domain body gravity axial signal in Z direction
**tGravityAcc-std()-X**|Standard Deviation of time domain body gravity axial signal in X direction
**tGravityAcc-std()-Y**|Standard Deviation of time domain body gravity axial signal in Y direction
**tGravityAcc-std()-Z**|Standard Deviation of time domain body gravity axial signal in Z direction
**tBodyAccJerk-mean()-X**|Mean of time domain body acceleration Jerk signals in X direction
**tBodyAccJerk-mean()-Y**|Mean of time domain body acceleration Jerk signals in Y direction
**tBodyAccJerk-mean()-Z**|Mean of time domain body acceleration Jerk signals in Z direction
**tBodyAccJerk-std()-X**|Standard Deviation of time domain body acceleration Jerk signals in X direction
**tBodyAccJerk-std()-Y**|Standard Deviation of time domain body acceleration Jerk signals in Y direction
**tBodyAccJerk-std()-Z**|Standard Deviation of time domain body acceleration Jerk signals in Z direction
**tBodyGyro-mean()-X**|Mean of time domain body gyroscope axial signal in X direction
**tBodyGyro-mean()-Y**|Mean of time domain body gyroscope axial signal in Y direction
**tBodyGyro-mean()-Z**|Mean of time domain body gyroscope axial signal in Z direction
**tBodyGyro-std()-X**|Standard Deviation of time domain body gyroscope axial signal in X direction
**tBodyGyro-std()-Y**|Standard Deviation of time domain body gyroscope axial signal in Y direction
**tBodyGyro-std()-Z**|Standard Deviation of time domain body gyroscope axial signal in Z direction
**tBodyGyroJerk-mean()-X**|Mean of time domain body gyroscope jerk signal in X direction
**tBodyGyroJerk-mean()-Y**|Mean of time domain body gyroscope jerk signal in Y direction
**tBodyGyroJerk-mean()-Z**|Mean of time domain body gyroscope jerk signal in Z direction
**tBodyGyroJerk-std()-X**|Standard Deviation of time domain body gyroscope jerk signal in X direction
**tBodyGyroJerk-std()-Y**|Standard Deviation of time domain body gyroscope jerk signal in Y direction
**tBodyGyroJerk-std()-Z**|Standard Deviation of time domain body gyroscope jerk signal in Z direction
**tBodyAccMag-mean()**|Mean of time domain body acceleration magnitude signal 
**tBodyAccMag-std()**|Standard Deviation of time domain body acceleration magnitude signal
**tGravityAccMag-mean()**|Mean of time domain body gravity magnitude signal
**tGravityAccMag-std()**|Standard Deviation of time domain body gravity magnitude signal
**tBodyAccJerkMag-mean()**|Mean of time domain body acceleration Jerk magnitude signal
**tBodyAccJerkMag-std()**|Standard Deviation of time domain body acceleration Jerk magnitude signal
**tBodyGyroMag-mean()**|Mean of time domain body gyroscope magnitude signal
**tBodyGyroMag-std()**|Standard Deviation of time domain body gyroscope magnitude signal
**tBodyGyroJerkMag-mean()**|Mean of time domain body gyroscope jerk magnitude signal
**tBodyGyroJerkMag-std()**|Standard Deviation of time domain body gyroscope jerk magnitude signal
**fBodyAcc-mean()-X**|Mean of freq domain acceleration signal in X direction
**fBodyAcc-mean()-Y**|Mean of freq domain acceleration signal in Y direction
**fBodyAcc-mean()-Z**|Mean of freq domain acceleration signal in Z direction
**fBodyAcc-std()-X**|Standard Deviation of freq domain acceleration signal in X direction
**fBodyAcc-std()-Y**|Standard Deviation of freq domain acceleration signal in Y direction
**fBodyAcc-std()-Z**|Standard Deviation of freq domain acceleration signal in Z direction
**fBodyAcc-meanFreq()-X**|Mean Freq of freq domain acceleration signal in X direction
**fBodyAcc-meanFreq()-Y**|Mean Freq of freq domain acceleration signal in Y direction
**fBodyAcc-meanFreq()-Z**|Mean Freq of freq domain acceleration signal in Z direction
**fBodyAccJerk-mean()-X**|Mean of freq domain acceleration jerk signal in X direction
**fBodyAccJerk-mean()-Y**|Mean of freq domain acceleration jerk signal in Y direction
**fBodyAccJerk-mean()-Z**|Mean of freq domain acceleration jerk signal in Z direction
**fBodyAccJerk-std()-X**|Standard Deviation of freq domain acceleration jerk signal in X direction
**fBodyAccJerk-std()-Y**|Standard Deviation of freq domain acceleration jerk signal in Y direction
**fBodyAccJerk-std()-Z**|Standard Deviation of freq domain acceleration jerk signal in Z direction
**fBodyAccJerk-meanFreq()-X**|Mean Freq of freq domain acceleration jerk signal in X direction
**fBodyAccJerk-meanFreq()-Y**|Mean Freq of freq domain acceleration jerk signal in Y direction
**fBodyAccJerk-meanFreq()-Z**|Mean Freq of freq domain acceleration jerk signal in Z direction
**fBodyGyro-mean()-X**|Mean of freq domain gyroscope signal in X direction
**fBodyGyro-mean()-Y**|Mean of freq domain gyroscope signal in Y direction
**fBodyGyro-mean()-Z**|Mean of freq domain gyroscope signal in Z direction
**fBodyGyro-std()-X**|Standard Deviation of freq domain gyroscope signal in X direction
**fBodyGyro-std()-Y**|Standard Deviation of freq domain gyroscope signal in Y direction
**fBodyGyro-std()-Z**|Standard Deviation of freq domain gyroscope signal in Z direction
**fBodyGyro-meanFreq()-X**|Mean Freq of freq domain gyroscope signal in X direction
**fBodyGyro-meanFreq()-Y**|Mean Freq of freq domain gyroscope signal in Y direction
**fBodyGyro-meanFreq()-Z**|Mean Freq of freq domain gyroscope signal in Z direction
**fBodyAccMag-mean()**|Mean of freq domain acceleration magnitude
**fBodyAccMag-std()**|Standard Deviation of freq domain acceleration magnitude
**fBodyAccMag-meanFreq()**|Mean Freq of freq domain acceleration magnitude signal
**fBodyBodyAccJerkMag-mean()**|Mean of freq domain acceleration jerk magnitude signal
**fBodyBodyAccJerkMag-std()**|Standard Deviation of freq domain acceleration jerk magnitude signal
**fBodyBodyAccJerkMag-meanFreq()**|Mean Freq of freq domain acceleration jerk magnitude signal
**fBodyBodyGyroMag-mean()**|Mean of freq domain gyroscope magnitude signal
**fBodyBodyGyroMag-std()**|Standard Deviation of gyroscope magnitude signal
**fBodyBodyGyroMag-meanFreq()**|Mean Freq of freq domain gyroscope magnitude signal
**fBodyBodyGyroJerkMag-mean()**|Mean of freq domain gyroscope jerk magnitude signal
**fBodyBodyGyroJerkMag-std()**|Standard Deviation of freq domain gyroscope jerk magnitude signal
**fBodyBodyGyroJerkMag-meanFreq()**|Mean Freq of freq domain gyroscope jerk magnitude signal
