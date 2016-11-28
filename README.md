# Wearable Computing
## analyzing human activity data from Samsung Galaxy S II

### Introduction

This is an analysis of data obtained by having a group of volunteers perform 6 activities (standing, walking, sitting, laying down, walking upstairs, and walking downstairs) while wearing a Samsung Galaxy S II on the waist, using the phone's embedded accelerometer and gyroscope to capture body motion.

A full description is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiment data are available here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script included in this repo, run_analysis.R, will download and unzip this data into the local working directory. It will then do the following:

* merge the test and training sets to create one data set
* extract the mean and standard deviation for each measurement recorded
* change the activities variable from a list of integers into descriptive names
* label the data set columns with descriptive variable names
* from the resulting data set, create a second data set with the average of each variable for each activity and each subject

This script requires installation of the dplyr and reshape2 packages.

### Merging
This section of the script takes the test data and training data, which are separate, and merges them into one complete data set, along with the activity and subject id numbers (also in separate tables). The raw Inertial Signals data are not included in the complete data set, since they would necessarily be removed in the next step, as they contain no means or standard deviations.

### Extracting Means and Standard Deviations of Measurements
This section pulls only the columns containing the means and standard deviations of each measurement from the complete data set to create a new data set. The angle() variables are not included here (some take means as input, but they are not themselves means), nor are the meanFreq() variables included (a weighted average of the frequency components differs enough from the simple mean of each variable to exclude it from this analysis).

### Changing activities variable
In the original data, the six activities performed are coded as integers from 1 to 6, each representing an activity. This section replaces those integers with factors of the activities they are describing: walking, walking upstairs, walking downstairs, sitting, standing, and laying down.

### Labeling the data set
This section takes the original measurement names included with the downloaded data, appends them to the new data set, and alters them to be more descriptive, using given guidelines: the names are converted to all lower case; underscores, periods, and white space are removed (none exist in this case); abbreviations are replaced with more descriptive entire words; and no duplicate names exist.

### Creating a data set of averages
This section takes the new tidy data set and creates a separate data set of averages for each measurement with each activity and each subject. This data set is in narrow form, which will provide convenience for further analysis of these averages. It contains four columns: the subject id, activity, measurement, and the mean value. Given 30 subjects, 6 activities, and 66 measurements, it contains 11880 rows, one for each combination of subject, activity, and measurement.

Finally, the script writes the data table of averages created in the last step into a txt file called "wearableaverages.txt". This text file can be read into R using the following code:

```R
data <- read.table("wearableaverages.txt", header = TRUE)
    View(data)
```

credit for this code block: https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/

### Conclusion
After running this script, three tables will exist in the R global environment.
* completeSet - the merged form of the original unaltered data from the experiment
* tidyData - the subsetted and tidied data resulting from steps 2 through 4
* wearableAverages - the data set of averages created from step 5

The attached code book describes the tidyData table and wearableAverages table in further detail.

data citation: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.