#Code Book 
This code book provides details on the information contained in the "output.txt" file generated by the assignment4() function applied to: 
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================

The output of assignment4() function is a text file called "output.txt" that contains 180 rows of 68 columns. 
The experiments were carried out by 30 volunteers (subjects) performing 6 types of activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING).  
Raw data was recorded while the subjects took part in numerous activities. The data was processed to provide a number of computed parameters(features) that were included as 
columns of the data files (X_train.txt/X_test.txt). Out of these 561 columns, columns representing the mean and standard deviation of the computed parameters were extracted. 
Each extracted column was further grouped by each set of activity (per subject) and the mean of the grouped data was calculated. These average values are presented as the 
columns of "output.txt" 

##Columns in "output.txt" 

### Key to Abreviations used in labels for columns 3 to 68: 
Avg: Average
Accl: Accelaration of the body
Gravity: Accelaration of the body due to gravity. 
Jerk: Jerk signalsderived from the body linear acceleration and angular velocity  
Ang-Accl: Angular accelaration acting on the body as measured by the gyroscope. 
FFT-Free Fourier Transforms as applied to the measurements to derive frequency related information of the calculated parameters. 
Mean: This signifies that the original column contained the mean of the calculated parameters. 
Std-Dev: This signifies that the original column contained the standard deviation of the calculated parameters.

1. "Subject" - Subject Identifier
2. "Activity" - Activity Identifier 
3. "Avg-Body-Accl-Mean-X-Axis" - The following labels are self explanatory when used in conjunction with the abbreviations listed above
4. "Avg-Body-Accl-Mean-Y-Axis" 
5. "Avg-Body-Accl-Mean-Z-Axis" 
6. "Avg-Body-Accl-Std-Dev-X-Axis" 
7. "Avg-Body-Accl-Std-Dev-Y-Axis" 
8. "Avg-Body-Accl-Std-Dev-Z-Axis" 
9. "Avg-Gravity-Accl-Mean-X-Axis" 
10. "Avg-Gravity-Accl-Mean-Y-Axis" 
11. "Avg-Gravity-Accl-Mean-Z-Axis" 
12. "Avg-Gravity-Accl-Std-Dev-X-Axis" 
13. "Avg-Gravity-Accl-Std-Dev-Y-Axis" 
14. "Avg-Gravity-Accl-Std-Dev-Z-Axis" 
15. "Avg-Body-Jerk-Mean-X-Axis" 
16. "Avg-Body-Jerk-Mean-Y-Axis" 
17. "Avg-Body-Jerk-Mean-Z-Axis" 
18. "Avg-Body-Jerk-Std-Dev-X-Axis" 
19. "Avg-Body-Jerk-Std-Dev-Y-Axis" 
20. "Avg-Body-Jerk-Std-Dev-Z-Axis" 
21. "Avg-Body-Ang-Accl-Mean-X-Axis" 
22. "Avg-Body-Ang-Accl-Mean-Y-Axis" 
23. "Avg-Body-Ang-Accl-Mean-Z-Axis" 
24. "Avg-Body-Ang-Accl-Std-Dev-X-Axis" 
25. "Avg-Body-Ang-Accl-Std-Dev-Y-Axis" 
26. "Avg-Body-Ang-Accl-Std-Dev-Z-Axis" 
27. "Avg-Body-Ang-Jerk-Mean-X-Axis" 
28. "Avg-Body-Ang-Jerk-Mean-Y-Axis" 
29. "Avg-Body-Ang-Jerk-Mean-Z-Axis" 
30. "Avg-Body-Ang-Jerk-Std-Dev-X-Axis" 
31. "Avg-Body-Ang-Jerk-Std-Dev-Y-Axis" 
32. "Avg-Body-Ang-Jerk-Std-Dev-Z-Axis" 
33. "Avg-Body-Accl-Magnitude-Mean" 
34. "Avg-Body-Accl-Magnitude-Std-Dev" 
35. "Avg-Gravity-Accl-Magnitude-Mean" 
36. "Avg-Gravity-Accl-Magnitude-Std-Dev" 
37. "Avg-Body-Jerk-Magnitude-Mean" 
38. "Avg-Body-Jerk-Magnitude-Std-Dev" 
39. "Avg-Body-Ang-Accl-Magnitude-Mean" 
40. "Avg-Body-Ang-Accl-Magnitude-Std-Dev" 
41. "Avg-Body-Ang-Jerk-Magnitude-Mean" 
42. "Avg-Body-Ang-Jerk-Magnitude-Std-Dev" 
43. "Avg-FFT-Body-Accl-Mean-X-Axis" 
44. "Avg-FFT-Body-Accl-Mean-Y-Axis" 
45. "Avg-FFT-Body-Accl-Mean-Z-Axis" 
46. "Avg-FFT-Body-Accl-Std-Dev-X-Axis" 
47. "Avg-FFT-Body-Accl-Std-Dev-Y-Axis" 
48. "Avg-FFT-Body-Accl-Std-Dev-Z-Axis" 
49. "Avg-FFT-Body-Jerk-Mean-X-Axis" 
50. "Avg-FFT-Body-Jerk-Mean-Y-Axis" 
51. "Avg-FFT-Body-Jerk-Mean-Z-Axis" 
52. "Avg-FFT-Body-Jerk-Std-Dev-X-Axis" 
53. "Avg-FFT-Body-Jerk-Std-Dev-Y-Axis" 
54. "Avg-FFT-Body-Jerk-Std-Dev-Z-Axis" 
55. "Avg-FFT-Body-Ang-Accl-Mean-X-Axis" 
56. "Avg-FFT-Body-Ang-Accl-Mean-Y-Axis" 
57. "Avg-FFT-Body-Ang-Accl-Mean-Z-Axis" 
58. "Avg-FFT-Body-Ang-Accl-Std-Dev-X-Axis" 
59. "Avg-FFT-Body-Ang-Accl-Std-Dev-Y-Axis" 
60. "Avg-FFT-Body-Ang-Accl-Std-Dev-Z-Axis" 
61. "Avg-FFT-Body-Accl-Magnitude-Mean" 
62. "Avg-FFT-Body-Accl-Magnitude-Std-Dev" 
63. "Avg-FFT-Body-Jerk-Magnitude-Mean" 
64. "Avg-FFT-Body-Jerk-Magnitude-Std-Dev" 
65. "Avg-FFT-Body-Ang-Accl-Magnitude-Mean" 
66. "Avg-FFT-Body-Ang-Accl-Magnitude-Std-Dev" 
67. "Avg-FFT-Body-Ang-Jerk-Magnitude-Mean" 
68. "Avg-FFT-Body-Ang-Jerk-Magnitude-Std-Dev"

## The following information is included from the original code book "feture_info.txt" of the provided DataSet: 

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'


## The following information is included as an extract from the original "README.txt" file: 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

