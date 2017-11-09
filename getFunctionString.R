getFunctionString<-function(groupedDataName,featureNameList,featureColName){
  #This function dynamically generated the code for the summarise function that will be used to calculate the averages for the data 
  #grouped by subjects and activities. 
  #input to the function is a grouped data frame in which the data has been grouped by subjects and activities. 
  #output is a string containing relevant code that will be called by the main script to execute the function and get the results. 
  
  vString<-paste0("summarise(",groupedDataName,",") #start the summarise function 
  len<-length(featureNameList)
  
  for (ctr in seq_along(featureNameList)){ #process all feature names in the features info file
    if (ctr<len) { #check if we need to add a comma after the string
      vString1<-paste0('"',featureColName[ctr],'"','=','mean(`',featureNameList[ctr],'`),') #add values to string
      vString<-paste0(vString,vString1)
    }
    else 
    { #last item no need to add another comma 
      vString1<-paste0('"',featureColName[ctr],'"','=','mean(`',featureNameList[ctr],'`)') #add values to string
      vString<-paste0(vString,vString1)
    }
  }
  vString<-paste0(vString,")") #close the summarise function
  return(vString)
}
