getFunctionString<-function(groupedDataName,featureNameList,featureColName){
  vString<-paste0("summarise(",groupedDataName,",")
  len<-length(featureNameList)
  for (ctr in seq_along(featureNameList)){ #process all feature names in the features info file
    if (ctr<len) {
      vString1<-paste0('"',featureColName[ctr],'"','=','mean(`',featureNameList[ctr],'`),')
      vString<-paste0(vString,vString1)
    }
    else 
    {
      vString1<-paste0('"',featureColName[ctr],'"','=','mean(`',featureNameList[ctr],'`)')
      vString<-paste0(vString,vString1)
    }
  }
  vString<-paste0(vString,")")
  return(vString)
}
