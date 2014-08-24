get_dataset <- function(folder, type)
{
    # Read in the feature data
    #
    data_X <- read.table(paste(folder, "/", type, "/X_", type, ".txt", sep=""))
    
    # Get the column names for the feature data and assign them
    #
    feature_names<-read.table(paste(data_folder, "/features.txt", sep=""))
    colnames(data_X) <- as.vector(feature_names$V2)

    # Extracts only the measurements on the mean and standard deviation for each measurement;
    #
    data_X <- data_X[,grep("mean|std", colnames(data_X), ignore.case=TRUE)]
    
    # Get the subject that was recorded for the observation
    #
    data_subject <- read.table(paste(folder, "/", type, "/subject_", type, ".txt", sep=""))
    colnames(data_subject) <- c("subject")
    
    data_y <- read.table(paste(folder, "/", type, "/y_", type, ".txt", sep=""))
    colnames(data_y) <- c("activity")

    # Get the activity labels and convert the column into a factor
    #
    activity_labels<-read.table(paste(data_folder, "/activity_labels.txt", sep=""))
    data_y$activity = factor(data_y$activity, levels=activity_labels$V1, labels=activity_labels$V2)
    
    # Combine the three tables into a single one
    #
    all_data <- cbind(data_subject, data_y, data_X)
}

run_analysis <- function()
{
    # Set working folder variables
    #
	data_folder <- "./UCI HAR Dataset"
    
    # Merge the training and test data into a single data table
    #
    training_data <- get_dataset(data_folder, "train")
	test_data <- get_dataset(data_folder, "test")
    
    all_data <- rbind(training_data, test_data)
    write.table(all_data, "tidy.txt")
    all_data
}