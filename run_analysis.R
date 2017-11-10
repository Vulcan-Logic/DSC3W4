#written by Vineet W. Singh - 08-11-2017
#run_analysis.R
#submission for assignment 4 of the cleanind data module of the data science course of coursera

#script input
#this script tries to open the following input files: features.txt, /train/subject_train.txt, /train/Y_train.txt, /train/X_train.txt,
# /test/subject_test.txt, /test/Y_test.txt, /test/X_test.txt. 

#script processing
# utlises two R functions to  open or download and open data files, read the data into 7 data frames. 
#Three frames from the training set and the test set are merged to makeget one frame each for the test set and training set. 
#Subsets of the two sets are obtained and 
# these subsets contain just the required featues i.e calculated mean and SD of all the processed data values. There 66 columns or relevant features. 
# The two data frames viz train frame and test frame are merged to make one frame. This frame is further sorted out and rearranged by the subject 
# and activity. 
# The rearranged data frame is further grouped by the subjects and activity of the subjects. Averages of all grouped data (grouped by subject and activity)
# in each column is calculated and stored in an output frame of 180 rows (30 subjects x 6 activities) for a total of 68 columns. 
# output table is 180 rows x 68 columns. 

#script output
# tries to write a txt file containing the processed data ie output table in the form of a text file containing a header with the column names 
# and 180 rows of 68 values each. 
#prints selected columns and rows of the the calculated data frame onto the screen. 

#start

#check if package curl is installed
if(is.element("curl", installed.packages()[,1])){ #check if dplyr is installed
  require("curl") #load dplyr if it is installed
} else{              #dplyr is not installed - stop
  stop("missing package: curl, please install it first")
}

#check if package curl is installed
if(is.element("dplyr", installed.packages()[,1])){ #check if dplyr is installed
  require("dplyr") #load dplyr if it is installed
} else{              #dplyr is not installed - stop
  stop("missing package: dplyr, please install it first")
}

#check if data files exist, if not download them

flag<-(
    file.exists('./test/X_test.txt') &
    file.exists('./test/subject_test.txt') &
    file.exists('./test/y_test.txt') &
    file.exists('./train/X_train.txt') &
    file.exists('./train/y_train.txt') &
    file.exists('./train/subject_train.txt')&
    file.exists('./features.txt')
)

if (!flag) {
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url,destfile="./datazip.zip",method="curl")
  unzip('./datazip.zip',exdir='./')

  file.copy(from='./UCI HAR Dataset/.',to='./',overwrite=T,recursive=T)
}

#check if the required scrip files are present

if (!file.exists('featureNames.R')){
  stop("Please download file 'featureNames.R' and place it in the same directory as run_analysis")
}

if (!file.exists('run_analysis1.R')){
  stop("Please download file 'run_analysis1.R' and place it in the same directory as run_analysis")
}

#run main function
source('run_analysis1.R')

returnVal<-run_analysis1() #main body of the script

#print results

message("Printing first 10 rows of the first 4 columns")
print(head(returnVal[1:4],10))
message("Printing first 10 rows of first 2 and the last 2 columns")
print(head(returnVal[,c(1,2,67,68)],10))

message("Printing last 10 rows of the first 4 columns")
print(tail(returnVal[1:4],10))
message("Printing last 10 rows of first 2 and the last 2 columns")
print(tail(returnVal[,c(1,2,67,68)],10))



