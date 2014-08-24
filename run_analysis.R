# The purpose is to summarize the average for all mean and standard deviation data columns
# in our raw data. We are going to start by loading the test data set and the training data
# set and merging them with their respective subject and activity columns. Then we will finally
# merge both data sets together by row and process the large data set until we have a tidy
# result aggregated by subject and activity.
#
# The data to be used can be found: 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## NOTE: Make sure the working directory is set to where the test and train folders/directories are
##       you can use setwd("Documents/UCI HAR Dataset/") for example. The path will vary depending
##       where you uncompressed the data folder.

# Loads the two large data frames to the variables we are later going to merge.
df1 <- read.table("test/X_test.txt")
df2 <- read.table("train/X_train.txt")

# Adds the Subject and Activity data to the test data set as the two first columns.
subj <- read.table("test/subject_test.txt")
act <- read.table("test/y_test.txt")
df1 <- cbind(subj, act, df1)

# Adds the Subject and Activity data to the training data set as the two first columns.
subj <- read.table("train/subject_train.txt")
act <- read.table("train/y_train.txt")
df2 <- cbind(subj, act, df2)

## STEP 1 OF THE COURSE PROJECT
# Merges both test and training data sets rows and deletes unused data frames to free memory.
df <- rbind(df1, df2)
rm(df1,df2, act, subj)

## STEP 4 OF THE COURSE PROJECT - We skip ahead since we will use this for STEP 2 as well.
# Reads the features.txt file to provide descriptive variable names for columns and assigns them.
nms <- read.table(file = "features.txt", sep = " ", colClasses = "character")
names(df) <- c("Subject", "Activity", nms[,2])
rm(nms)

## STEP 2 OF THE COURSE PROJECT
# We select only the first two columns (Subject and Activity), plus any column ending in "mean()"
# or in "std()", since we are only insterested in means and standard deviation meassurements.
subcols <- grepl("Subject|Activity|mean\\(\\)|std\\(\\)", names(df))
df <- df[,subcols]

## STEP 3 OF THE COURSE PROJECT
# Factors the Activity column providing the descriptive names contained in activity_lables.txt.
ftr <- read.table("activity_labels.txt", sep = " ")
levels <- ftr[,2]
df[,2] <- as.factor(df[,2])
levels(df[,2]) <- levels
rm(ftr)

## STEP 5 OF THE COURSE PROJECT
# Finally, we aggregate the data by Subject and Activity using mean as the function to calculate an
# average by activity for each subject for all 66 other variables. We then export the data frame.
tidy <- aggregate(df[3:68], by = list(Subject = df[,1], Activity = df[,2]), FUN = "mean")
rm(df)
write.table(tidy, "tidy.txt", row.names = FALSE)

## NOTE: You can use the line below to import back the tidy data frame for testing purposes. If you
##       import it into RStudio and click on the "tidy" data frame on the Environment tab (upper right)
##       you wil be able to see the correctly imported tidy data frame.

# readTidy <- read.table("tidy.txt", header = TRUE)
