
CodeBook - run_analysis.R
========================================================

Variable conversions from the source data set to run_analysis.R output

Source Data variables names         run_analysis result variables names
test_y.V1 / train_y.V1 			        "activity_class"              
activity_labels.V2			            "activity"
                    
"tBodyAcc-mean()-X"           		  "timeBodyAccelerationMeanAxisX"
"tBodyAcc-mean()-Y"     		        "timeBodyAccelerationMeanAxisY"     
"tBodyAcc-mean()-Z"     		        "timeBodyAccelerationMeanAxisZ"      
"tBodyAcc-std()-X"     			        "timeBodyAccelerationStandardDeviationAxisX"       
"tBodyAcc-std()-Y"            		  "timeBodyAccelerationStandardDeviationAxisY"
"tBodyAcc-std()-Z"  			          "timeBodyAccelerationStandardDeviationAxisZ"	
         
"tGravityAcc-mean()-X"       		    "timeGravityAccelerationMeanAxisX" 
"tGravityAcc-mean()-Y"        		  "timeGravityAccelerationMeanAxisY"
"tGravityAcc-mean()-Z"    		      "timeGravityAccelerationMeanAxisZ"    
"tGravityAcc-std()-X"        		    "timeGravityAccelerationStandardDeviationAxisX"
"tGravityAcc-std()-Y"   		        "timeGravityAccelerationStandardDeviationAxisY"      		
"tGravityAcc-std()-Z" 			        "timeGravityAccelerationStandardDeviationAxisZ"
        
"tBodyAccJerk-mean()-X"     		    "timeBodyAccelerationJerkMeanAxisX"  
"tBodyAccJerk-mean()-Y"      		    "timeBodyAccelerationJerkMeanAxisY"
"tBodyAccJerk-mean()-Z"       		  "timeBodyAccelerationJerkMeanAxisZ"
"tBodyAccJerk-std()-X"        		  "timeBodyAccelerationJerkStandardDeviationAxisX"
"tBodyAccJerk-std()-Y"   		        "timeBodyAccelerationJerkStandardDeviationAxisY"     
"tBodyAccJerk-std()-Z" 			        "timeBodyAccelerationJerkStandardDeviationAxisZ"
      
"tBodyGyro-mean()-X"          		  "timeBodyGyroscopicMeanAxisX"
"tBodyGyro-mean()-Y"          	 	  "timeBodyGyroscopicMeanAxisY"
"tBodyGyro-mean()-Z"          		  "timeBodyGyroscopicMeanAxisZ"
"tBodyGyro-std()-X"  			          "timeBodyGyroscopicStandardDeviationAxisX"        
"tBodyGyro-std()-Y"     		        "timeBodyGyroscopicStandardDeviationAxisY"      
"tBodyGyro-std()-Z" 			          "timeBodyGyroscopicStandardDeviationAxisZ"
          
"tBodyGyroJerk-mean()-X"     		    "timeBodyGyroscopicJerkMeanAxisX" 
"tBodyGyroJerk-mean()-Y"     		    "timeBodyGyroscopicJerkMeanAxisY"
"tBodyGyroJerk-mean()-Z"      	    "timeBodyGyroscopicJerkMeanAxisZ"
"tBodyGyroJerk-std()-X"       	    "timeBodyGyroscopicJerkStandardDeviationAxisX"
"tBodyGyroJerk-std()-Y"       	    "timeBodyGyroscopicJerkStandardDeviationAxisY"
"tBodyGyroJerk-std()-Z"  		        "timeBodyGyroscopicJerkStandardDeviationAxisZ"
    
"tBodyAccMag-mean()" 			          "timeBodyAccelerationMagnitudeMean"         
"tBodyAccMag-std()"			            "timeBodyAccelerationMagnitudeStandardDeviation"     
      
"tGravityAccMag-mean()"       	    "timeGravityAccelerationMagnitudeMean"
"tGravityAccMag-std()"  		        "timeGravityAccelerationMagnitudeStandardDeviation"
     
"tBodyAccJerkMag-mean()"      	    "timeBodyAccelerationJerkMagnitudeMean"
"tBodyAccJerkMag-std()" 		        "timeBodyAccelerationJerkMagnitudeStandardDeviation"  
    
"tBodyGyroMag-mean()"         	    "timeBodyGyroscopicMagnitudeMean"
"tBodyGyroMag-std()"  			        "timeBodyGyroscopicMagnitudeStandardDeviation" 
      
"tBodyGyroJerkMag-mean()"    		    "timeBodyGyroscopicJerkMagnitudeMean" 
"tBodyGyroJerkMag-std()"  	        "timeBodyGyroscopicJerkMagnitudeStandardDeviation"
    
"fBodyAcc-mean()-X"           	    "frequencyBodyAccelerationMeanAxisX"
"fBodyAcc-mean()-Y"          		    "frequencyBodyAccelerationMeanAxisY" 
"fBodyAcc-mean()-Z"           	    "frequencyBodyAccelerationMeanAxisZ"
"fBodyAcc-std()-X"            	    "frequencyBodyAccelerationStandardDeviationAxisX"
"fBodyAcc-std()-Y"            	    "frequencyBodyAccelerationStandardDeviationAxisY"
"fBodyAcc-std()-Z"   			          "frequencyBodyAccelerationStandardDeviationAxisZ"
       
"fBodyAccJerk-mean()-X"			        "frequencyBodyAccelerationJerkMeanAxisX"       
"fBodyAccJerk-mean()-Y"			        "frequencyBodyAccelerationJerkMeanAxisY"			       
"fBodyAccJerk-mean()-Z"			        "frequencyBodyAccelerationJerkMeanAxisZ"       
"fBodyAccJerk-std()-X"			        "frequencyBodyAccelerationJerkStandardDeviationAxisX"       
"fBodyAccJerk-std()-Y"			        "frequencyBodyAccelerationJerkStandardDeviationAxisY"        
"fBodyAccJerk-std()-Z"			        "frequencyBodyAccelerationJerkStandardDeviationAxisZ"  
      
"fBodyGyro-mean()-X"			          "frequencyBodyGyroscopicMeanAxisX"          
"fBodyGyro-mean()-Y"			          "frequencyBodyGyroscopicMeanAxisY"         
"fBodyGyro-mean()-Z"			          "frequencyBodyGyroscopicMeanAxisZ"          
"fBodyGyro-std()-X"			            "frequencyBodyGyroscopicStandardDeviationAxisX"           
"fBodyGyro-std()-Y"			            "frequencyBodyGyroscopicStandardDeviationAxisY"            
"fBodyGyro-std()-Z"			            "frequencyBodyGyroscopicStandardDeviationAxisZ"   
       
"fBodyAccMag-mean()"			          "frequencyBodyAccelerationMagnitudeMean"       
"fBodyAccMag-std()"			            "frequencyBodyAccelerationMagnitudeStandardDeviation"   
     
"fBodyBodyAccJerkMag-mean()"		    "frequencyBodyAccelerationJerkMagnitudeMean"
"fBodyBodyAccJerkMag-std()"		      "frequencyBodyAccelerationJerkMagnitudeStandardDeviation"

"fBodyBodyGyroMag-mean()"		        "frequencyBodyGyroscopicMagnitudeMean"  
"fBodyBodyGyroMag-std()"		        "frequencyBodyGyroscopicMagnitudeStandardDeviation"
    
"fBodyBodyGyroJerkMag-mean()"		    "frequencyBodyGyroscopicJerkMagnitudeMean" 
"fBodyBodyGyroJerkMag-std()"		    "frequencyBodyGyroscopicJerkMagnitudeStandardDeviation"

subject_test.V1 / subject_train.V1	"Subject"  



