### Human Activity Recognition using Smartphones Data Analysis
The **gettingandcleaning** repository contains the below files expected by the project.

File Name|Description
---------|-----------
README.md|Readme file that explains the files in the repository and the description of the data analysis
run_analysis.R|R Function file that creates the tidy data set
codebook.md|Contains description of codes in the tidy data set
final_tidy_data.txt|Tidy data set produced by running run_analysis()
final_labeled_data.txt|Text file produced before the last step of producing tidy data

The repository also contains the below data files that was supplied for the project:

Data File|Description
---------|-----------
features_info.txt|Shows information about the variables used on the feature vector
features.txt|List of all features
activity_labels.txt|Links the class labels with their activity name
X_train.txt| Training set
y_train.txt| Training labels
subject_train.txt| Each row identifies the subject who performed the train activity for each window sample
X_test.txt| Test set
y_test.txt| Test labels
subject_train.txt| Each row identifies the subject who performed the test activity for each window sample

### run_analysis.R

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
