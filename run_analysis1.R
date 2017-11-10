#written by Vineet W. Singh - 08-11-2017
#run_analysis.R
#submission for assignment 4 of the cleanind data module of the data science course of coursera

#script input
  #this script tries to open the following input files: features.txt, /train/subject_train.txt, /train/Y_train.txt, /train/X_train.txt,
  # /test/subject_test.txt, /test/Y_test.txt, /test/X_test.txt. 

#script processing
  # utlises three R functions to do the job of trying to open data files, if successful, it reads the data into 7 data frames. Three frames from the 
  # training set and the test set are merged to make one frame each for the test set and training set. Subsets of the two sets are obtained and 
  # these subsets contain just the required featues i.e calculated mean and SD of all the processed data values. There 66 columns or relevant features. 
  # The two data frames viz train frame and test frame are merged to make one frame. This frame is further sorted out and rearranged by the subject 
  # and activity. 
  # The rearranged data frame is further grouped by the subjects and activity of the subjects. Averages of all grouped data (grouped by subject and activity)
  # in each column is calculated and stored in an output frame of 180 rows (30 subjects x 6 activities) for a total of 68 columns. 
  # output table is 180 rows x 68 columns. 

#script output
  # tries to write a txt file containing the processed data ie output table in the form of a text file containing a header with the column names 
  # and 180 rows of 68 values each. 

run_analysis1<-function(){
  
  source("featureNames.R")                        #try to source required function file 

  #Read and process features file 
  message("reading features.txt")
  features<-read.table('./features.txt')
  activityLabels<-read.table('./activity_labels.txt')
  names(activityLabels)<-c("Activity","ActivityLabels")
  
  names(features)<-c("cNo","feature")             #extract feature names from the features list
  
  cNo1<-grep('mean\\(\\)',features$feature)       #search for columns that have the feature means
  cNo2<-grep('std\\(\\)',features$feature)        #search for columns that have the feature standard deviations
  
  reqColNos<-sort(c(cNo1,cNo2))                   #assemble and sort the column numbers into one list
  featureNameList<-features[reqColNos,2]          #get the column names of the required features 
  
  featureNameList<-as.character(featureNameList)  #convert the feature names into strings 
  
  #Read and process training set
  message("reading subject_train.txt")
  subject1<-read.table('./train/subject_train.txt') #try to read subject data from training set
  
  names(subject1)<-"Subject"                      #apply descriptive title name to subject column
  
  message("reading y_train.txt")
  activity1<-read.table('./train/y_train.txt')    #try to read activity data from training set
  
  names(activity1)<-"Activity"                    #apply descriptive title name to activity column
  
  message("reading x_train.txt")
  data1<-read.table('./train/X_train.txt')        #try to read features data from training set
  
  data1Final<-data1[,reqColNos]                   #yank out the required columns from the larger data set#
  
  names(data1Final)<-featureNameList              #apply descriptive column names from the features list to the relevant columns
  
  finalDataSetTrain<-cbind(subject1,activity1,data1Final)  #bind the three separate data sets into one data set
  
  
  #read and process test set
  message("reading subject_test.txt")
  subject2<-read.table('./test/subject_test.txt') #try to read subject data from test set
  
  names(subject2)<-"Subject"                      #apply dscriptive name to subject column
  
  message("reading y_test.txt")
  activity2<-read.table('./test/y_test.txt')      #try to read activity data from test set
                      
  names(activity2)<-"Activity"                    #apply dscriptive name to activity column
  
  message("reading x_test.txt")
  data2<-read.table('./test/X_test.txt')          #try to read features data from test set
  
  data2Final<-data2[,reqColNos]                   #yank out the required columns from the larger data set#
  names(data2Final)<-featureNameList              #give the features columns names from the features list
  
  finalDataSetTest<-cbind(subject2,activity2,data2Final) #combine the three data frames into one data frame
  
  
  #merge sets and do final processing
  finalDataUnsorted<-rbind(finalDataSetTrain,finalDataSetTest) #merge the training and test data frames into one large frame
  
  finalDataSorted<-arrange(finalDataUnsorted,Subject,Activity) #sort the merged data 
  
  semifinalFrame <- group_by(finalDataSorted,Subject,Activity) %>%  #group row data by subject and subgroup by activity
                summarise_all(funs(mean))                            #calculate summary statistics (mean) on grouped data
  
  finalFrame<-merge(semifinalFrame,activityLabels,by="Activity") #replace numeric activity indicators by their descriptive labels
  
  names(finalFrame)<-c("Subject","Activity",featureNames(featureNameList)) #prepare the column names by a call to featureNames function to get a 
                                                                           #detailed feature names
  message("writing output.txt") 
  write.table(finalFrame,"output.txt",row.names=F)              #write the result into the output.txt file.
  return(finalFrame)                                                    #return final frame
}
