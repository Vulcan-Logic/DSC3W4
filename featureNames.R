featureNames<-function(featureNameList){
  #dynamically build a string that will take in all the column names and then execute the string. 
  vFeatureFullName<-NULL
  for (vFeatureNameNo in seq_along(featureNameList)){ #process all feature names in the features info file
    
    vFeatureName<-featureNameList[vFeatureNameNo] #get the character string of feature Name
    
    vSplitFeatureName<-strsplit(vFeatureName,"-") #divide feature name into it's components
    
    
    if (length(vSplitFeatureName[[1]]==3)){ #check on the length of components
      #1
      if (tolower(vSplitFeatureName[[1]][1])=="tbodyacc"){ 
        vFeatureMain<-"Avg-Body-Accl-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean-"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev-"}
        vFeatureAxis<-switch(toupper(vSplitFeatureName[[1]][3]),"X" = "X-Axis", "Y"="Y-Axis","Z"="Z-Axis")
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc,vFeatureAxis)
      }
      
      #2
      if (tolower(vSplitFeatureName[[1]][1])=="tgravityacc"){ 
        vFeatureMain<-"Avg-Gravity-Accl-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean-"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev-"}
        vFeatureAxis<-switch(toupper(vSplitFeatureName[[1]][3]),"X" = "X-Axis", "Y"="Y-Axis","Z"="Z-Axis")
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc,vFeatureAxis)
      }
      
      #3
      if (tolower(vSplitFeatureName[[1]][1])=="tbodyaccjerk"){ 
        vFeatureMain<-"Avg-Body-Jerk-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean-"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev-"}
        vFeatureAxis<-switch(toupper(vSplitFeatureName[[1]][3]),"X" = "X-Axis", "Y"="Y-Axis","Z"="Z-Axis")
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc,vFeatureAxis)
      }
      
      #4
      if (tolower(vSplitFeatureName[[1]][1])=="tbodygyro"){ 
        vFeatureMain<-"Avg-Body-Ang-Accl-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean-"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev-"}
        vFeatureAxis<-switch(toupper(vSplitFeatureName[[1]][3]),"X" = "X-Axis", "Y"="Y-Axis","Z"="Z-Axis")
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc,vFeatureAxis)
      }
      
      #5
      if (tolower(vSplitFeatureName[[1]][1])=="tbodygyrojerk"){ 
        vFeatureMain<-"Avg-Body-Ang-Jerk-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean-"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev-"}
        vFeatureAxis<-switch(toupper(vSplitFeatureName[[1]][3]),"X" = "X-Axis", "Y"="Y-Axis","Z"="Z-Axis")
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc,vFeatureAxis)
      }
      
      #6
      if (tolower(vSplitFeatureName[[1]][1])=="fbodyacc"){ 
        vFeatureMain<-"Avg-FFT-Body-Accl-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean-"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev-"}
        vFeatureAxis<-switch(toupper(vSplitFeatureName[[1]][3]),"X" = "X-Axis", "Y"="Y-Axis","Z"="Z-Axis")
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc,vFeatureAxis)
      }
      
      #7
      if (tolower(vSplitFeatureName[[1]][1])=="fbodyaccjerk"){ 
        vFeatureMain<-"Avg-FFT-Body-Jerk-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean-"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev-"}
        vFeatureAxis<-switch(toupper(vSplitFeatureName[[1]][3]),"X" = "X-Axis", "Y"="Y-Axis","Z"="Z-Axis")
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc,vFeatureAxis)
      }
      
      #8
      if (tolower(vSplitFeatureName[[1]][1])=="fbodygyro"){ 
        vFeatureMain<-"Avg-FFT-Body-Ang-Accl-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean-"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev-"}
        vFeatureAxis<-switch(toupper(vSplitFeatureName[[1]][3]),"X" = "X-Axis", "Y"="Y-Axis","Z"="Z-Axis")
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc,vFeatureAxis)
      }
      
    }
    
    if (length(vSplitFeatureName[[1]]==2)) { #check on the length of components
      
      #1
      if (tolower(vSplitFeatureName[[1]][1])=="tbodyaccmag"){ 
        vFeatureMain<-"Avg-Body-Accl-Magnitude-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev"}
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc)
      }
      
      #2
      if (tolower(vSplitFeatureName[[1]][1])=="tgravityaccmag"){ 
        vFeatureMain<-"Avg-Gravity-Accl-Magnitude-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev"}
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc)
      }
      
      #3
      if (tolower(vSplitFeatureName[[1]][1])=="tbodyaccjerkmag"){ 
        vFeatureMain<-"Avg-Body-Jerk-Magnitude-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev"}
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc)
      }
      
      #4
      if (tolower(vSplitFeatureName[[1]][1])=="tbodygyromag"){ 
        vFeatureMain<-"Avg-Body-Ang-Accl-Magnitude-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev"}
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc)
      }
      
      #5  
      if (tolower(vSplitFeatureName[[1]][1])=="tbodygyrojerkmag"){ 
        vFeatureMain<-"Avg-Body-Ang-Jerk-Magnitude-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev"}
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc)
      }
      
      #6
      if (tolower(vSplitFeatureName[[1]][1])=="fbodyaccmag"){ 
        vFeatureMain<-"Avg-FFT-Body-Accl-Magnitude-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev"}
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc)
      }
      
      #7
      if (tolower(vSplitFeatureName[[1]][1])=="fbodybodyaccjerkmag"){ 
        vFeatureMain<-"Avg-FFT-Body-Jerk-Magnitude-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev"}
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc)
      }
      
      #8
      if (tolower(vSplitFeatureName[[1]][1])=="fbodybodygyromag"){ 
        vFeatureMain<-"Avg-FFT-Body-Ang-Accl-Magnitude-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev"}
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc)
      }
      
      #9
      if (tolower(vSplitFeatureName[[1]][1])=="fbodybodygyrojerkmag"){ 
        vFeatureMain<-"Avg-FFT-Body-Ang-Jerk-Magnitude-"
        if(tolower(vSplitFeatureName[[1]][2])=="mean()"){ vFeatureFunc<-"Mean"}
        else if (tolower(vSplitFeatureName[[1]][2])=="std()"){ vFeatureFunc<-"Std-Dev"}
        vFeatureFullName[vFeatureNameNo]<-paste0(vFeatureMain,vFeatureFunc)
      }
      
    }
  }
  return(vFeatureFullName)
}
