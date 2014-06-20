Run_Analysis
============

This project is an exercise for the in working with and cleanding a data set to fit within the definitions of a tidy 
data set.


The R script in this project, run_analysis.R assumes that the script user has already downloaded the data set for the project from:
     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
This run_analysis.R script requires the script user to have already extracted the files from the zip file into a "./data" subdirectory in the users current working directory in their R environment.

Project source Files used by this run_analysis.R include:

"./data/test/subject_test.txt" - Each row identifies the subject who performed the activity for each window sample.
"./data/test/X_test.txt" - Test set
"./data/test/Y_test.txt" - Test class labels
"./data/train/subject_train.txt" - Each row identifies the subject who performed the activity for each window sample.
"./data/train/X_train.txt" - Train set
"./data/train/Y_train.txt" - Train class labels
"./data/features.txt" - List of all features.
"./data/activity_labels.txt" - Links the class labels with their activity name.


A description of the source data data for this project is available from the site where the source data was obtained.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The scope and steps of the run_analysis.R script include

     • verify that the source files and sctrucure exist in a ./data sub directory of the current R environment working directory.
     • Merge the training and the test sets to create one data set.
        - Reads the source data files into data frames 
        - Attaches column names (features) to the Test and train data frames
        - Attachs the Subject column to the Test and train data frames
        - Combines test and traning data frames into a single combiend data frame
    • Extracts only the measurements on the mean and standard deviation for each measurement in the combined data frame
        - reduces the working set to columns containing measurment mean and Std
    • Use descriptive activity names to name the activities in the data frame
        - Merge the source data Activity labels set to the combined reduced data frame
    • Appropriately label the data set with descriptive variable names.
        - extracts the reduced set column names into a vector
        - alters column names to descriptive names
        - set the descriptive names to reduced set column names
    • Creates a second, independent tidy data set with the average of each variable for each subject and each activity.
        - This is the output of this run_analysis.R script 



Source Data Set
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
