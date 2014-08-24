# Human Activity Recognition Using Smartphones Data Set 

## Summary

**Aggregation of wearable technology usage data calculating means by activities performed by every study subject.** 

**Based on the work of:**  
  
Human Activity Recognition Using Smartphones Dataset   
Version 1.0   

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory   
DITEN - Università degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws   
[www.smartlab.ws](www.smartlab.ws)

    
**SOURCE:** [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

    
*The experiments have been carried out with a group of 30 volunteers 
within an age bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, we captured 3-axial linear acceleration and 
3-axial angular velocity at a constant rate of 50Hz. The experiments have 
been video-recorded to label the data manually.* 
    
    
## Our Analysis    
    
**Our analysis consisted in extracting only the mean and standard deviation variables 
from the original data set and aggregating them by Subject and activiy, to have a summarized
data frame to work with and reach conclusions.**

In order to achieve this we started with the original data from the UCI Machine Learning repository. We combined all data files into one single data frame using R, merging the test and training sets as well as factoring the activities by providing descriptibe names. We extracted only the means and standard deviations columns from the original set, which consisted of 66 features which we finally aggregated by each of the 30 subjects and each of the 6 activities, resulting in a 180 by 68 tidy dataframe.

## Features selection

Our features are based on the original features extracted from the UCI Machine learning repository*:

*The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.* 

*Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).* 

*Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).* 

*These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.*

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

**The set of variables that were estimated from these signals and their means aggregated by Subject and Activity are:**

* mean(): Mean value
* std(): Standard deviation

***SOURCE:** [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


**Bellow is a complete list of variables of each feature vector:**

---

Variable Name: Subject  
Column position: 1  
Class: integer  
Range (min - max): 1 - 30 

---

Variable Name: Activity  
Column position: 2  
Class: factor  
Levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

---
Variable Name: tBodyAcc-mean()-X  
Column position: 3  
Class: numeric  
Range (min - max): 0.22159824394 - 0.3014610196  

---
Variable Name: tBodyAcc-mean()-Y  
Column position: 4  
Class: numeric  
Range (min - max): -0.0405139534294 - -0.00130828765170213  

---
Variable Name: tBodyAcc-mean()-Z  
Column position: 5  
Class: numeric  
Range (min - max): -0.152513899520833 - -0.07537846886  

---
Variable Name: tBodyAcc-std()-X  
Column position: 6  
Class: numeric  
Range (min - max): -0.996068635384615 - 0.626917070512821  

---
Variable Name: tBodyAcc-std()-Y  
Column position: 7  
Class: numeric  
Range (min - max): -0.990240946666667 - 0.616937015333333  

---
Variable Name: tBodyAcc-std()-Z  
Column position: 8  
Class: numeric  
Range (min - max): -0.987658662307692 - 0.609017879074074  

---
Variable Name: tGravityAcc-mean()-X  
Column position: 9  
Class: numeric  
Range (min - max): -0.680043155060241 - 0.974508732  

---
Variable Name: tGravityAcc-mean()-Y  
Column position: 10  
Class: numeric  
Range (min - max): -0.479894842941176 - 0.956593814210526  

---
Variable Name: tGravityAcc-mean()-Z  
Column position: 11  
Class: numeric  
Range (min - max): -0.49508872037037 - 0.9578730416  

---
Variable Name: tGravityAcc-std()-X  
Column position: 12  
Class: numeric  
Range (min - max): -0.996764227384615 - -0.829554947808219  

---
Variable Name: tGravityAcc-std()-Y  
Column position: 13  
Class: numeric  
Range (min - max): -0.99424764884058 - -0.643578361424658  

---
Variable Name: tGravityAcc-std()-Z  
Column position: 14  
Class: numeric  
Range (min - max): -0.990957249538462 - -0.610161166287671  

---
Variable Name: tBodyAccJerk-mean()-X  
Column position: 15  
Class: numeric  
Range (min - max): 0.0426880986186441 - 0.130193043809524  

---
Variable Name: tBodyAccJerk-mean()-Y  
Column position: 16  
Class: numeric  
Range (min - max): -0.0386872111282051 - 0.056818586275  

---
Variable Name: tBodyAccJerk-mean()-Z  
Column position: 17  
Class: numeric  
Range (min - max): -0.0674583919268293 - 0.0380533591627451  

---
Variable Name: tBodyAccJerk-std()-X  
Column position: 18  
Class: numeric  
Range (min - max): -0.994604542264151 - 0.544273037307692  

---
Variable Name: tBodyAccJerk-std()-Y  
Column position: 19  
Class: numeric  
Range (min - max): -0.989513565652174 - 0.355306716915385  

---
Variable Name: tBodyAccJerk-std()-Z  
Column position: 20  
Class: numeric  
Range (min - max): -0.993288313333333 - 0.0310157077775926  

---
Variable Name: tBodyGyro-mean()-X  
Column position: 21  
Class: numeric  
Range (min - max): -0.205775427307692 - 0.19270447595122  

---
Variable Name: tBodyGyro-mean()-Y  
Column position: 22  
Class: numeric  
Range (min - max): -0.204205356087805 - 0.0274707556666667  

---
Variable Name: tBodyGyro-mean()-Z  
Column position: 23  
Class: numeric  
Range (min - max): -0.0724546025804878 - 0.179102058245614  

---
Variable Name: tBodyGyro-std()-X  
Column position: 24  
Class: numeric  
Range (min - max): -0.994276591304348 - 0.267657219333333  

---
Variable Name: tBodyGyro-std()-Y  
Column position: 25  
Class: numeric  
Range (min - max): -0.994210471914894 - 0.476518714444444  

---
Variable Name: tBodyGyro-std()-Z  
Column position: 26  
Class: numeric  
Range (min - max): -0.985538363333333 - 0.564875818162963  

---
Variable Name: tBodyGyroJerk-mean()-X  
Column position: 27  
Class: numeric  
Range (min - max): -0.157212539189362 - -0.0220916265065217  

---
Variable Name: tBodyGyroJerk-mean()-Y  
Column position: 28  
Class: numeric  
Range (min - max): -0.0768089915604167 - -0.0132022768074468  

---
Variable Name: tBodyGyroJerk-mean()-Z  
Column position: 29  
Class: numeric  
Range (min - max): -0.0924998531372549 - -0.00694066389361702  

---
Variable Name: tBodyGyroJerk-std()-X  
Column position: 30  
Class: numeric  
Range (min - max): -0.99654254057971 - 0.179148649684615  

---
Variable Name: tBodyGyroJerk-std()-Y  
Column position: 31  
Class: numeric  
Range (min - max): -0.997081575652174 - 0.295945926186441  

---
Variable Name: tBodyGyroJerk-std()-Z  
Column position: 32  
Class: numeric  
Range (min - max): -0.995380794637681 - 0.193206498960417  

---
Variable Name: tBodyAccMag-mean()  
Column position: 33  
Class: numeric  
Range (min - max): -0.986493196666667 - 0.644604325128205  

---
Variable Name: tBodyAccMag-std()  
Column position: 34  
Class: numeric  
Range (min - max): -0.986464542615385 - 0.428405922622222  

---
Variable Name: tGravityAccMag-mean()  
Column position: 35  
Class: numeric  
Range (min - max): -0.986493196666667 - 0.644604325128205  

---
Variable Name: tGravityAccMag-std()  
Column position: 36  
Class: numeric  
Range (min - max): -0.986464542615385 - 0.428405922622222  

---
Variable Name: tBodyAccJerkMag-mean()  
Column position: 37  
Class: numeric  
Range (min - max): -0.99281471515625 - 0.434490400974359  

---
Variable Name: tBodyAccJerkMag-std()  
Column position: 38  
Class: numeric  
Range (min - max): -0.994646916811594 - 0.450612065720513 

---
Variable Name: tBodyGyroMag-mean()  
Column position: 39  
Class: numeric  
Range (min - max): -0.980740846769231 - 0.418004608615385   

---
Variable Name: tBodyGyroMag-std()  
Column position: 40  
Class: numeric  
Range (min - max): -0.981372675614035 - 0.299975979851852  

---
Variable Name: tBodyGyroJerkMag-mean()  
Column position: 41  
Class: numeric  
Range (min - max): -0.997322526811594 - 0.0875816618205128  

---
Variable Name: tBodyGyroJerkMag-std()  
Column position: 42  
Class: numeric  
Range (min - max): -0.997666071594203 - 0.250173204117966  

---
Variable Name: fBodyAcc-mean()-X  
Column position: 43  
Class: numeric  
Range (min - max): -0.995249932641509 - 0.537012022051282  

---
Variable Name: fBodyAcc-mean()-Y  
Column position: 44  
Class: numeric  
Range (min - max): -0.989034304057971 - 0.524187686888889  

---
Variable Name: fBodyAcc-mean()-Z  
Column position: 45  
Class: numeric  
Range (min - max): -0.989473926666667 - 0.280735952206667  

---
Variable Name: fBodyAcc-std()-X  
Column position: 46  
Class: numeric  
Range (min - max): -0.996604570307692 - 0.658506543333333  

---
Variable Name: fBodyAcc-std()-Y  
Column position: 47  
Class: numeric  
Range (min - max): -0.990680395362319 - 0.560191344  

---
Variable Name: fBodyAcc-std()-Z  
Column position: 48  
Class: numeric  
Range (min - max): -0.987224804307692 - 0.687124163703704  

---
Variable Name: fBodyAccJerk-mean()-X   
Column position: 49  
Class: numeric  
Range (min - max): -0.994630797358491 - 0.474317256051282  

---
Variable Name: fBodyAccJerk-mean()-Y  
Column position: 50  
Class: numeric  
Range (min - max): -0.989398823913043 - 0.276716853307692  

---
Variable Name: fBodyAccJerk-mean()-Z  
Column position: 51  
Class: numeric  
Range (min - max): -0.992018447826087 - 0.157775692377778  

---
Variable Name: fBodyAccJerk-std()-X  
Column position: 52  
Class: numeric  
Range (min - max): -0.995073759245283 - 0.476803887476923  

---
Variable Name: fBodyAccJerk-std()-Y  
Column position: 53  
Class: numeric  
Range (min - max): -0.990468082753623 - 0.349771285415897  

---
Variable Name: fBodyAccJerk-std()-Z  
Column position: 54  
Class: numeric  
Range (min - max): -0.993107759855072 - -0.00623647528983051  

---
Variable Name: fBodyGyro-mean()-X  
Column position: 55  
Class: numeric  
Range (min - max): -0.99312260884058 - 0.474962448333333  

---
Variable Name: fBodyGyro-mean()-Y  
Column position: 56  
Class: numeric  
Range (min - max): -0.994025488297872 - 0.328817010088889  

---
Variable Name: fBodyGyro-mean()-Z  
Column position: 57  
Class: numeric  
Range (min - max): -0.985957788 - 0.492414379822222  

---
Variable Name: fBodyGyro-std()-X  
Column position: 58  
Class: numeric  
Range (min - max): -0.994652185217391 - 0.196613286661538  

---
Variable Name: fBodyGyro-std()-Y  
Column position: 59  
Class: numeric  
Range (min - max): -0.994353086595745 - 0.646233637037037  

---
Variable Name: fBodyGyro-std()-Z  
Column position: 60  
Class: numeric  
Range (min - max): -0.986725274871795 - 0.522454216314815  

---
Variable Name: fBodyAccMag-mean()  
Column position: 61  
Class: numeric  
Range (min - max): -0.986800645362319 - 0.586637550769231  

---
Variable Name: fBodyAccMag-std()  
Column position: 62  
Class: numeric  
Range (min - max): -0.987648484461539 - 0.178684580868889  

---
Variable Name: fBodyBodyAccJerkMag-mean()  
Column position: 63  
Class: numeric  
Range (min - max): -0.993998275797101 - 0.538404846128205  

---
Variable Name: fBodyBodyAccJerkMag-std()  
Column position: 64  
Class: numeric  
Range (min - max): -0.994366667681159 - 0.316346415348718  

---
Variable Name: fBodyBodyGyroMag-mean()  
Column position: 65  
Class: numeric  
Range (min - max): -0.986535242105263 - 0.203979764835897  

---
Variable Name: fBodyBodyGyroMag-std()  
Column position: 66  
Class: numeric  
Range (min - max): -0.981468841692308 - 0.236659662496296  

---
Variable Name: fBodyBodyGyroJerkMag-mean()  
Column position: 67  
Class: numeric  
Range (min - max): -0.997617389275362 - 0.146618569064407  

---
Variable Name: fBodyBodyGyroJerkMag-std()  
Column position: 68  
Class: numeric  
Range (min - max): -0.99758523057971 - 0.287834616098305  
