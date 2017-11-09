# DSC3W4
### Directory for assignment of Week 4, Course 3 of Data Science Program 

## Section 1 - The project directory has the following structure and contains the following files:
__/test__ *- subdirectory containing data files for the test cases*

__/test/Inertial Signals/__ *- subdirectory containing raw sensor data for the test cases*

__/test/subject_test.txt__ *- identifier of subject performing experiment*

__/test/X_test.txt__ *- processed data from raw data files present in the "/Inertial Signals" directory*

__/train__ *- subdirectory containing data files for the training cases*

__/train/Inertial Signals/__ *- subdirectory containing raw sensor data files for the training cases* 

__/train/subject_train.txt__ *- identifier of subject performing experiment*

__/train/X_train.txt__ *- processed data from raw data files present in the "/Inertial Signals" directory*

__/train__ *- subdirectory containing data files for the training cases*

__/activity_labels.txt__ *- file containing word descriptions of numeric identifiers used in labeling exercising activities and present in column no. 2 of final output table*

__/features.txt__ *- column names of all features included in the columns of the X_train/X_test files in the test and train subdirectories*

__/features_info.txt__ *- original code book describing what the data in the files is and how it was obtained after processing all the raw data from the sensors*

__/README.txt__ *- the original readme file provided with the data. This file contains information about the various files in the directory structure*

__/output.txt__ *- contains the resultant data frame ("the output") in txt format with the header containing the column names*

__/assignment4.R__ *- script file that is supposed to be run in order to provide the output - further description appears below*

__/featureNames.R__ *- script file that contains a subroutine for the assignment4() function - further description appears below*

__/getFunctionString.R__ *- script file that contains a subroutine for the assignment4() function - further description appears below*

## Section 2 Description of the script files
### Assignment4.R
This file contains a function by the name of assignment4(). The file should be included in the R enviroment by calling the source("Assignment4.R") function call. 
The assignment4 function contains the main body of the code. 
This function: 
Opens the following input files: features.txt, /train/subject_train.txt, /train/Y_train.txt, /train/X_train.txt, /test/subject_test.txt, /test/Y_test.txt, /test/X_test.txt. 
If successful in opening these files, it reads the data into 7 data frames. Three frames each from the training set and the test set are read in from the files and the three are 
merged to make one frame each for the test set and training set. Subsets of the twoframes are obtained and these subsets contain just the required feature columns i.e. 
the calculated mean and SD of all the processed data values found in X_train/X_test. These are 66 columns of relevant features. 
The two subset data frames viz train frame and test frame are merged to make one resulting frame. 
This resulting frame is further sorted and rearranged by the subject and then by activity identifiers. 
The rearranged data frame is further grouped by the subjects and activities. Averages of all grouped data (grouped by subject and activity) in each column is calculated by the summarise() 
function and stored in an output frame of 180 rows (30 subjects x 6 activities each) for a total of 68 columns. 
The output data frame is 180 rows x 68 columns and is presented as a text file with the name of "output.txt"

### featureNames.R
This file contains a subroutine that takes in the complete list of feature names (i.e. column names) that we wish to include in the coutput table/text file and returns a list that is 
a little bit more descriptive in nature. The returned list of detailed column names will be included in the header of the output text file. 

### getFunctionString.R
This script file has a function that dynamically generates the code that calls the summarise function to calculate grouped means for 66 columns using the original feature(column) names and 
the grouped data.
The output is put into a table with new detailed column names that have been passed to the summarise function as one of the parameters.






