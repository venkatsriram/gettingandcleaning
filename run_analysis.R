run_analysis <- function(workingdir = ".") {
	# Set working directory to what is passed
	setwd(workingdir)

	# load library data.table
	library(data.table, quietly=TRUE)

	# Read activity labels into activity_labels data table
	activity_labels <- read.table("activity_labels.txt", header=FALSE)

	# Set the column names for the activity_labels data table 
	colnames(activity_labels) <- c("activity_id","activity_name")

	# Read features into features data table
	features <- read.table("features.txt", header=FALSE)

	# Set the column names for the features data table 
	colnames(features) <- c("feature_id","feature_desc")

	# Read XTest data into data table
	Xtest <- read.table("X_test.txt", header=FALSE)

	# Read XTrain data into data table
	Xtrain <- read.table("X_train.txt", header=FALSE)

	# Combine XTest and XTrain into a combined file
	Xcombined <- rbind(Xtest, Xtrain)

	# Name the columns of the combined X single file from the features data table
	names(Xcombined) <- features$feature_desc

	# Select only the columns that are mean or standard deviation
	meanstd <- Xcombined[c(grep("mean|std", names(Xcombined), value=TRUE))]

	# Read ytest data into data table
	ytest <- read.table("y_test.txt", header=FALSE)

	# Read ytrain data into data table
	ytrain <- read.table("y_train.txt", header=FALSE)

	# Combine ytest and ytrain into a combined file
	ycombined <- rbind(ytest,ytrain)

	# Name the column of the ycombined file
	names(ycombined) <- "activity_id"

	# Read subject test file into data table
	subject_test <- read.table("subject_test.txt", header=FALSE)

	# Read subject train file into data table
	subject_train <- read.table("subject_train.txt", header=FALSE)

	# Combine subject test and train file into a combined data table
	subjectcombined <- rbind(subject_test, subject_train)

	# Name the column of the subjectcombined file
	names(subjectcombined) <- "subject_id"

	# Combine all the three data tables into a single data table
	cd <- cbind(ycombined, subjectcombined, meanstd)

	# Merge the combined data table with activity labels on activity_id column
	# to get activity_names
	combined <- merge(activity_labels, cd)

	# Remove the activity_id column
	combined$activity_id <- NULL

	cdt <- data.table(combined)

	# Write the labeled data set
	write.table(cdt,file="final_labeled_data.txt",sep="\t", row.names=FALSE)

	# Creates a second, independent tidy data set with the average of each variable 
	# for each activity and each subject
	final <- cdt[, lapply(.SD, mean), by=c("activity_name","subject_id"), .SDcols=c(3:81)]

	# Write the final tidy data into a file with TAB seperator
	write.table(final,file="final_tidy_data.txt",sep="\t", row.names=FALSE)
}
