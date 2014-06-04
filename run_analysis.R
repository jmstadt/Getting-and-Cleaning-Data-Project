##Getting and Cleaning Data Project

run_analysis <- function() {
	
	##Set up a directory to put downloaded file
	if (!file.exists("data")) {
		dir.create("data")
	} else {message("directory already exists")}

	##Description of File to download
	##http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

	##Download file into directory
	if (!file.exists("./data/Dataset.zip")) {
		fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
		download.file(fileUrl, destfile = "./data/Dataset.zip")
		filelist <- list.files("./data")
		print(filelist)
		dateDownloaded <- date()
		print(dateDownloaded)
	} else {message("Dataset.zip already exists")}

	##Unzip File
	if (!file.exists("UCI HAR Dataset")) {
		unzip("./data/Dataset.zip")
	} else {message("UCI HAR Dataset already exists")}

	##Read Files and Merge
	DT1 <- read.table("./UCI HAR Dataset/test/X_test.txt")
	DT2 <- read.table("./UCI HAR Dataset/train/X_train.txt")
	MergedTable <- rbind(DT1, DT2)

	##Extract only the measurements on the mean and standard deviation for each measurement.
	Extract <- subset(MergedTable, select = c(V1, V2, V3, V4, V5, V6, V41, V42,
		V43, V44, V45, V46, V81, V82, V83, V84, V85, V86, V121, V122, V123,
		V124, V125, V126, V161, V162, V163, V164, V165, V166, V201, V202,
		V214, V215, V227, V228, V240, V241, V253, V254, V266, V267, V268,
		V269, V270, V271, V345, V346, V347, V348, V349, V350, V424, V425,
		V426, V427, V428, V429, V503, V504, V516, V517, V529, V530, V542,
		V543))

	##Change Column Names to Descriptive Activity Names
	colnames(Extract) <- c("mean-tBodyAcc-Xaxis", "mean-tBodyAcc-Yaxis", "mean-tBodyAcc-Zaxis",
		"std-tBodyAcc-Xaxis", "std-tBodyAcc-Yaxis", "std-tBodyAcc-Zaxis", "mean-tGravityAcc-Xaxis",
		"mean-tGravityAcc-Yaxis", "mean-tGravityAcc-Zaxis", "std-tGravityAcc-Xaxis",
		"std-tGravityAcc-Yaxis", "std-tGravityAcc-Zaxis", "mean-tBodyAccJerk-Xaxis",
		"mean-tBodyAccJerk-Yaxis", "mean-tBodyAccJerk-Zaxis", "std-tBodyAccJerk-Xaxis",
		"std-tBodyAccJerk-Yaxis", "std-tBodyAccJerk-Zaxis", "mean-tBodyGyro-Xaxis",
		"mean-tBodyGyro-Yaxis", "mean-tBodyGyro-Zaxis", "std-tBodyGyro-Xaxis", "std-tBodyGyro-Yaxis",
		"std-tBodyGyro-Zaxis", "mean-tBodyGyroJerk-Xaxis", "mean-tBodyGyroJerk-Yaxis",
		"mean-tBodyGyroJerk-Zaxis", "std-tBodyGyroJerk-Xaxis", "std-tBodyGyroJerk-Yaxis",
		"std-tBodyGyroJerk-Zaxis", "mean-tBodyAccMag", "std-tBodyAccMag", "mean-tGravityAccMag",
		"std-tGravityAccMag", "mean-tBodyAccJerkMag", "std-tBodyAccJerkMag", "mean-tBodyGyroMag",
		"std-tBodyGyroMag", "mean-tBodyGyroJerkMag", "std-tBodyGyroJerkMag", "mean-fBodyAcc-Xaxis",
		"mean-fBodyAcc-Yaxis", "mean-fBodyAcc-Zaxis", "std-fBodyAcc-Xaxis", "std-fBodyAcc-Yaxis",
		"std-fBodyAcc-Zaxis", "mean-fBodyAccJerk-Xaxis", "mean-fBodyAccJerk-Yaxis",
		"mean-fBodyAccJerk-Zaxis", "std-fBodyAccJerk-Xaxis", "std-fBodyAccJerk-Yaxis",
		"std-fBodyAccJerk-Zaxis", "mean-fBodyGyro-Xaxis", "mean-fBodyGyro-Yaxis",
		"mean-fBodyGyro-Zaxis", "std-fBodyGyro-Xaxis", "std-fBodyGyro-Yaxis", "std-fBodyGyro-Zaxis",
		"mean-fBodyAccMag", "std-fBodyAccMag", "mean-fBodyAccJerkMag", "std-fBodyAccJerkMag",
		"mean-fBodyGyroMag", "std-fBodyGyroMag", "mean-fBodyGyroJerkMag", "std-fBodyGyroJerkMag")

	##Write a tidy file of the well named "Extract" table
	write.table(Extract, file = "./data/tidyfile1.txt")

	##Creates a second, independent tidy data set with the average of
	##each variable for each activity and each subject
	ExtractAvg <- colMeans(Extract)
	
	##Write a second tidy file of the well named "ExtractAvg" table
	write.table(ExtractAvg, file = "./data/tidyfile2.txt")

}