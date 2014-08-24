# Getting and Cleaning Data Project

## Introduction
This repository contains the project work for the Getting and Cleaning Data course on Coursera.

The goal of the project is to collect and clean raw data to produce a tidy data set that can 
be used for later analysis.

## Install
The raw data for this project is obtained by downloading:

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description of the data is found at:

	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Once you download the zip file above, extract it to sub-folder:

	./UCI HAR Dataset

Where the parent folder is the working directory in R. 
For example, if your folder hierarchy looks like:

	C:\data_science\project\UCI HAR Dataset

Then use:

	setwd("C:/data_science/project")

## Execution
Running the project is done by loading the source file and executing
the function run_analysis(). This is done by:

	source("[path]/run_analysis.R")

Where [path] includes the full or partial path needed to find run_analysis.R.
For example, if run_analysis.R is found at:

	C:\data_science\github\CookBook 

Then use:

	source("C:/data_science/github/CookBook/run_analysis.R")

Once the source file is loaded, run the script as follows:

	run_analysis()

## Complete Sample Execution
Sample steps to execute script using example environment described above
that happens to match my folder hierarchy.

	setwd("C:/data_science/project")
	source("C:/data_science/github/CookBook/run_analysis.R")
	run_analysis()

## Functional Description
The run_analysis() function does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
