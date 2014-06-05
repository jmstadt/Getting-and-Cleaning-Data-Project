CodeBook for Getting and Cleaning Data Project
Overall Information
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

"data"
	the name of the directory

the dataset to be downloaded
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

"Dataset.zip"
	the downloaded file

"UCI HAR Dataset"
	the unzipped folder

"X_test.txt" and "X_train.txt"
	the data

"DT1" and "DT2"
	the data read into R

"MergedTable"
	rbind DT1 and DT2

"reference.txt"
	the info on the names of the data

"Extract"
	the data with only mean and std (standard deviation) values

"(Mean, Std)-tBodyAcc-(X, Y, Z)axis"
	The (mean, standard deviation) measurement of the total body acceleration in the X, Y, and Z axis

"(Mean, Std)-tGravityAcc-(X, Y, Z)axis"
	The (mean, standard deviation) measurement fo the total Gravity acceleration in the X, Y, and Z axis

"(Mean, Std)-tBodyAccJerk-(X, Y, Z)axis"
	The (mean, standard deviation) measurement fo the total Body acceleration Jerk in the X, Y, and Z axis

"(Mean, Std)-tBodyGyro-(X, Y, Z)axis"
	The (mean, standard deviation) measurement fo the total Body Gyroscopic motion in the X, Y, and X axis

"(Mean, Std)-tBodyGyroJerk-(X, Y, Z)axis"
	The (mean, standard deviation) measurement fo the total Body Gyroscopic Jerk in the X, Y, and Z axis

"(Mean, Std)-tBodyAccMag"
	The (mean, standard deviation) measurement fo the total Body acceleration magnitude

"(Mean, Std)-tGravityAccMag"
	The (mean, standard deviation) measurement fo the total Gravity acceleration magnitude

"(Mean, Std)-tBodyAccJerkMag"
	The (mean, standard deviation) measurement fo the total Body acceleration Jerk magnitude

"(Mean, Std)-tBodyGyroMag"
	The (mean, standard deviation) measurement fo the total Body gyroscopic magnitude

"(Mean, Std)-tBodyGyroJerkMag"
	The (mean, standard deviation) measurement fo the total Body gyroscopic Jerk magnitude

"(Mean, Std)-fBodyAcc-(X, Y, Z)axis"
	The (mean, standard deviation) measurement fo the full Body acceleration in the X, Y, and Z axis

"(Mean, Std)-fBodyAccJerk-(X, Y, Z)axis"
	The (mean, standard deviation) measurement fo the full Body acceleration Jerk in the X, Y, and Z axis

"(Mean, Std)-fBodyGyro-(X, Y, Z)axis"
	The (mean, standard deviation) measurement fo the full Body gyroscopic motion in the X, Y, and Z axis

"(Mean, Std)-fBodyAccMag"
	The (mean, standard deviation) measurement fo the full Body acceleration magnitude

"(Mean, Std)-fBodyAccJerkMag"
	The (mean, standard deviation) measurement fo the full Body acceleration Jerk magnitude

"(Mean, Std)-fBodyGyroMag"
	The (mean, standard deviation) measurement fo the full Body gyroscopic motion magnitude

"(Mean, Std)-fBodyGyroJerkMag"
	The (mean, standard deviation) measurement fo the full Body gyroscopic Jerk magnitude

"TidyFile1"
	Extract written to a text file

"ExtractAvg"
	the average of each value in "Extract" using colMeans

"TidyFile2"
	ExtractAvg written to a text file
