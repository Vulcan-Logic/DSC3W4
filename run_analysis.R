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
if ( ! (
  file.exists('./test/X_test.txt') &
  file.exists('./test/y_test.txt') &
  file.exists('./train/X_train.txt') &
  file.exists('./train/y_train.txt') &
  file.exists('./activity_lables.txt') &
  file.exists('./features.txt')
) ) {
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

print(run_analysis1())

