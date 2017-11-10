  #main function called by the run_analysis script

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
  
  finalFrame <- group_by(finalDataSorted,Subject,Activity) %>%  #group row data by subject and subgroup by activity
                summarise_all(funs(mean))                            #calculate summary statistics (mean) on grouped data
  
  finalFrame<-as.data.frame(finalFrame)                         #recast the resultant grouped data frame as a ordinary data frame 
  
  finalFrame$Activity<-lapply(finalFrame$Activity, function(x){switch(x,"WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")})
  #change activity labels from numbers to descriptive string values
  
  finalFrame$Activity<-as.character(finalFrame$Activity)
  
  names(finalFrame)<-c("Subject","Activity",featureNames(featureNameList)) #prepare the column names by a call to featureNames function to get a 
                                                                           #detailed feature names
  message("writing output.txt") 
  write.table(finalFrame,"output.txt",row.names=F)              #write the result into the output.txt file.
  return(finalFrame)                                                    #return final frame
}

