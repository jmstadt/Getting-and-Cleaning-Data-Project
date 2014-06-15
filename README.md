Getting-and-Cleaning-Data-Project
=================================
Getting and Cleaning Data Project
First, set up a directory called "data" to put the downloaded file in
Then download this file http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Into the directory "data"
Then unzip the file
In the unzipped file folder "UCI HAR Dataset" got to the file X_test.txt and X_train.txt
Use Read.Table to read them into files DT1 adn DT2
Merge DT1 and DT2 using rbind
Read features.txt and identify the columns that have mean and std
Extract those columns into a new table using subset
Change the tile of each of those columns to the descriptive title as per referenct.txt
Write a tidy text file of the result
take the average of each column using colMeans
Write a second tidy text file of that result
