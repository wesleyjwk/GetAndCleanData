# Code Book

## Transformations Performed on the Original Data
* Activities were converted from a number format to a string.
* All feature variables were named and those names were partially substituted so that t-prefixes now show 'Time' and f-prefixes now show 'Freq' at the beginning of the variable names
* All feature variable were aggregated per subject per activity to display the mean value.

## Feature Selection
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## UCI Har Dataset Names
===================================================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
===================================================================================================
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Universit�  degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Polit�cnica de Catalunya (BarcelonaTech). Vilanova i la Geltr� (08800), Spain
activityrecognition '@' smartlab.ws 
===================================================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.
- A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A

For more information about this dataset please contact: activityrecognition '@' smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Other Related Publications:
===========================
[2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz.  Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care.   Volume 19, Issue 9. May 2013

[3] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 

[4] Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Catal�. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.  

==================================================================================================
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita and Xavier Parra. November 2013.

## List of Variables Included in the `TidyData.txt`

=================================================================================================

    Subject: ID Number

-------------------------------------------------------------------------------------------------

   Storage mode: integer

          Min.:   1.000
       1st Qu.:   8.000
        Median:  15.500
          Mean:  15.500
       3rd Qu.:  23.000
          Max.:  30.000
          
=================================================================================================

   Activity: Type of Activity

-------------------------------------------------------------------------------------------------

   Storage mode: character

       Length:        180
        Class:  character
         Mode:  character
         
 =================================================================================================

   TimeBodyAcc-mean()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  0.222
       1st Qu.:  0.271
        Median:  0.277
          Mean:  0.274
       3rd Qu.:  0.280
          Max.:  0.301

=================================================================================================

   TimeBodyAcc-mean()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.041
       1st Qu.:  -0.020
        Median:  -0.017
          Mean:  -0.018
       3rd Qu.:  -0.015
          Max.:  -0.001

=================================================================================================

   TimeBodyAcc-mean()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.152
       1st Qu.:  -0.112
        Median:  -0.108
          Mean:  -0.109
       3rd Qu.:  -0.104
          Max.:  -0.075

=================================================================================================

   TimeBodyAcc-std()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.996
       1st Qu.:  -0.980
        Median:  -0.753
          Mean:  -0.558
       3rd Qu.:  -0.198
          Max.:   0.627

=================================================================================================

   TimeBodyAcc-std()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.990
       1st Qu.:  -0.942
        Median:  -0.509
          Mean:  -0.461
       3rd Qu.:  -0.031
          Max.:   0.617

=================================================================================================

   TimeBodyAcc-std()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.988
       1st Qu.:  -0.950
        Median:  -0.652
          Mean:  -0.576
       3rd Qu.:  -0.231
          Max.:   0.609

=================================================================================================

   TimeGravityAcc-mean()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.680
       1st Qu.:   0.838
        Median:   0.921
          Mean:   0.698
       3rd Qu.:   0.942
          Max.:   0.975

=================================================================================================

   TimeGravityAcc-mean()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.480
       1st Qu.:  -0.233
        Median:  -0.128
          Mean:  -0.016
       3rd Qu.:   0.088
          Max.:   0.957

=================================================================================================

   TimeGravityAcc-mean()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.495
       1st Qu.:  -0.117
        Median:   0.024
          Mean:   0.074
       3rd Qu.:   0.149
          Max.:   0.958

=================================================================================================

   TimeGravityAcc-std()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.997
       1st Qu.:  -0.983
        Median:  -0.970
          Mean:  -0.964
       3rd Qu.:  -0.951
          Max.:  -0.830

=================================================================================================

   TimeGravityAcc-std()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.971
        Median:  -0.959
          Mean:  -0.952
       3rd Qu.:  -0.937
          Max.:  -0.644

=================================================================================================

   TimeGravityAcc-std()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.991
       1st Qu.:  -0.961
        Median:  -0.945
          Mean:  -0.936
       3rd Qu.:  -0.918
          Max.:  -0.610

=================================================================================================

   TimeBodyAccJerk-mean()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  0.043
       1st Qu.:  0.074
        Median:  0.076
          Mean:  0.079
       3rd Qu.:  0.083
          Max.:  0.130

=================================================================================================

   TimeBodyAccJerk-mean()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.039
       1st Qu.:   0.000
        Median:   0.009
          Mean:   0.008
       3rd Qu.:   0.013
          Max.:   0.057

=================================================================================================

   TimeBodyAccJerk-mean()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.067
       1st Qu.:  -0.011
        Median:  -0.004
          Mean:  -0.005
       3rd Qu.:   0.002
          Max.:   0.038

=================================================================================================

   TimeBodyAccJerk-std()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.983
        Median:  -0.810
          Mean:  -0.595
       3rd Qu.:  -0.223
          Max.:   0.544

=================================================================================================

   TimeBodyAccJerk-std()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.990
       1st Qu.:  -0.972
        Median:  -0.776
          Mean:  -0.565
       3rd Qu.:  -0.148
          Max.:   0.355

=================================================================================================

   TimeBodyAccJerk-std()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.993
       1st Qu.:  -0.983
        Median:  -0.884
          Mean:  -0.736
       3rd Qu.:  -0.512
          Max.:   0.031

=================================================================================================

   TimeBodyGyro-mean()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.206
       1st Qu.:  -0.047
        Median:  -0.029
          Mean:  -0.032
       3rd Qu.:  -0.017
          Max.:   0.193

=================================================================================================

   TimeBodyGyro-mean()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.204
       1st Qu.:  -0.090
        Median:  -0.073
          Mean:  -0.074
       3rd Qu.:  -0.061
          Max.:   0.027

=================================================================================================

   TimeBodyGyro-mean()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.072
       1st Qu.:   0.075
        Median:   0.085
          Mean:   0.087
       3rd Qu.:   0.102
          Max.:   0.179

=================================================================================================

   TimeBodyGyro-std()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.974
        Median:  -0.789
          Mean:  -0.692
       3rd Qu.:  -0.441
          Max.:   0.268

=================================================================================================

   TimeBodyGyro-std()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.963
        Median:  -0.802
          Mean:  -0.653
       3rd Qu.:  -0.420
          Max.:   0.476

=================================================================================================

   TimeBodyGyro-std()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.986
       1st Qu.:  -0.961
        Median:  -0.801
          Mean:  -0.616
       3rd Qu.:  -0.311
          Max.:   0.565

=================================================================================================

   TimeBodyGyroJerk-mean()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.157
       1st Qu.:  -0.103
        Median:  -0.099
          Mean:  -0.096
       3rd Qu.:  -0.091
          Max.:  -0.022

=================================================================================================

   TimeBodyGyroJerk-mean()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.077
       1st Qu.:  -0.046
        Median:  -0.041
          Mean:  -0.043
       3rd Qu.:  -0.038
          Max.:  -0.013

=================================================================================================

   TimeBodyGyroJerk-mean()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.092
       1st Qu.:  -0.062
        Median:  -0.053
          Mean:  -0.055
       3rd Qu.:  -0.049
          Max.:  -0.007

=================================================================================================

   TimeBodyGyroJerk-std()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.997
       1st Qu.:  -0.980
        Median:  -0.840
          Mean:  -0.704
       3rd Qu.:  -0.463
          Max.:   0.179

=================================================================================================

   TimeBodyGyroJerk-std()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.997
       1st Qu.:  -0.983
        Median:  -0.894
          Mean:  -0.764
       3rd Qu.:  -0.586
          Max.:   0.296

=================================================================================================

   TimeBodyGyroJerk-std()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.985
        Median:  -0.861
          Mean:  -0.710
       3rd Qu.:  -0.474
          Max.:   0.193

=================================================================================================

   TimeBodyAccMag-mean()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.957
        Median:  -0.483
          Mean:  -0.497
       3rd Qu.:  -0.092
          Max.:   0.645

=================================================================================================

   TimeBodyAccMag-std()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.943
        Median:  -0.607
          Mean:  -0.544
       3rd Qu.:  -0.209
          Max.:   0.428

=================================================================================================

   TimeGravityAccMag-mean()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.957
        Median:  -0.483
          Mean:  -0.497
       3rd Qu.:  -0.092
          Max.:   0.645

=================================================================================================

   TimeGravityAccMag-std()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.943
        Median:  -0.607
          Mean:  -0.544
       3rd Qu.:  -0.209
          Max.:   0.428

=================================================================================================

   TimeBodyAccJerkMag-mean()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.993
       1st Qu.:  -0.981
        Median:  -0.817
          Mean:  -0.608
       3rd Qu.:  -0.246
          Max.:   0.434

=================================================================================================

   TimeBodyAccJerkMag-std()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.977
        Median:  -0.801
          Mean:  -0.584
       3rd Qu.:  -0.217
          Max.:   0.451

=================================================================================================

   TimeBodyGyroMag-mean()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.981
       1st Qu.:  -0.946
        Median:  -0.655
          Mean:  -0.565
       3rd Qu.:  -0.216
          Max.:   0.418

=================================================================================================

   TimeBodyGyroMag-std()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.981
       1st Qu.:  -0.948
        Median:  -0.742
          Mean:  -0.630
       3rd Qu.:  -0.360
          Max.:   0.300

=================================================================================================

   TimeBodyGyroJerkMag-mean()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.997
       1st Qu.:  -0.985
        Median:  -0.865
          Mean:  -0.736
       3rd Qu.:  -0.512
          Max.:   0.088

=================================================================================================

   TimeBodyGyroJerkMag-std()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.998
       1st Qu.:  -0.981
        Median:  -0.881
          Mean:  -0.755
       3rd Qu.:  -0.577
          Max.:   0.250

=================================================================================================

   FreqBodyAcc-mean()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.979
        Median:  -0.769
          Mean:  -0.576
       3rd Qu.:  -0.217
          Max.:   0.537

=================================================================================================

   FreqBodyAcc-mean()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.989
       1st Qu.:  -0.954
        Median:  -0.595
          Mean:  -0.489
       3rd Qu.:  -0.063
          Max.:   0.524

=================================================================================================

   FreqBodyAcc-mean()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.990
       1st Qu.:  -0.962
        Median:  -0.724
          Mean:  -0.630
       3rd Qu.:  -0.318
          Max.:   0.281

=================================================================================================

   FreqBodyAcc-std()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.997
       1st Qu.:  -0.982
        Median:  -0.747
          Mean:  -0.552
       3rd Qu.:  -0.197
          Max.:   0.658

=================================================================================================

   FreqBodyAcc-std()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.991
       1st Qu.:  -0.940
        Median:  -0.513
          Mean:  -0.481
       3rd Qu.:  -0.079
          Max.:   0.560

=================================================================================================

   FreqBodyAcc-std()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.946
        Median:  -0.644
          Mean:  -0.582
       3rd Qu.:  -0.266
          Max.:   0.687

=================================================================================================

   FreqBodyAccJerk-mean()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.983
        Median:  -0.813
          Mean:  -0.614
       3rd Qu.:  -0.282
          Max.:   0.474

=================================================================================================

   FreqBodyAccJerk-mean()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.989
       1st Qu.:  -0.973
        Median:  -0.782
          Mean:  -0.588
       3rd Qu.:  -0.196
          Max.:   0.277

=================================================================================================

   FreqBodyAccJerk-mean()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.992
       1st Qu.:  -0.980
        Median:  -0.871
          Mean:  -0.714
       3rd Qu.:  -0.470
          Max.:   0.158

=================================================================================================

   FreqBodyAccJerk-std()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.985
        Median:  -0.825
          Mean:  -0.612
       3rd Qu.:  -0.247
          Max.:   0.477

=================================================================================================

   FreqBodyAccJerk-std()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.991
       1st Qu.:  -0.974
        Median:  -0.785
          Mean:  -0.571
       3rd Qu.:  -0.169
          Max.:   0.350

=================================================================================================

   FreqBodyAccJerk-std()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.993
       1st Qu.:  -0.984
        Median:  -0.895
          Mean:  -0.756
       3rd Qu.:  -0.544
          Max.:  -0.006

=================================================================================================

   FreqBodyGyro-mean()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.993
       1st Qu.:  -0.970
        Median:  -0.730
          Mean:  -0.637
       3rd Qu.:  -0.339
          Max.:   0.475

=================================================================================================

   FreqBodyGyro-mean()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.970
        Median:  -0.814
          Mean:  -0.677
       3rd Qu.:  -0.446
          Max.:   0.329

=================================================================================================

   FreqBodyGyro-mean()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.986
       1st Qu.:  -0.962
        Median:  -0.791
          Mean:  -0.604
       3rd Qu.:  -0.264
          Max.:   0.492

=================================================================================================

   FreqBodyGyro-std()-X

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.995
       1st Qu.:  -0.975
        Median:  -0.809
          Mean:  -0.711
       3rd Qu.:  -0.481
          Max.:   0.197

=================================================================================================

   FreqBodyGyro-std()-Y

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.960
        Median:  -0.796
          Mean:  -0.645
       3rd Qu.:  -0.415
          Max.:   0.646

=================================================================================================

   FreqBodyGyro-std()-Z

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.964
        Median:  -0.822
          Mean:  -0.658
       3rd Qu.:  -0.392
          Max.:   0.522

=================================================================================================

   FreqBodyAccMag-mean()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.956
        Median:  -0.670
          Mean:  -0.536
       3rd Qu.:  -0.162
          Max.:   0.587

=================================================================================================

   FreqBodyAccMag-std()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.988
       1st Qu.:  -0.945
        Median:  -0.651
          Mean:  -0.621
       3rd Qu.:  -0.365
          Max.:   0.179

=================================================================================================

   FreqBodyBodyAccJerkMag-mean()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.977
        Median:  -0.794
          Mean:  -0.576
       3rd Qu.:  -0.187
          Max.:   0.538

=================================================================================================

   FreqBodyBodyAccJerkMag-std()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.994
       1st Qu.:  -0.975
        Median:  -0.813
          Mean:  -0.599
       3rd Qu.:  -0.267
          Max.:   0.316

=================================================================================================

   FreqBodyBodyGyroMag-mean()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.987
       1st Qu.:  -0.962
        Median:  -0.766
          Mean:  -0.667
       3rd Qu.:  -0.409
          Max.:   0.204

=================================================================================================

   FreqBodyBodyGyroMag-std()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.982
       1st Qu.:  -0.949
        Median:  -0.773
          Mean:  -0.672
       3rd Qu.:  -0.428
          Max.:   0.237

=================================================================================================

   FreqBodyBodyGyroJerkMag-mean()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.998
       1st Qu.:  -0.981
        Median:  -0.878
          Mean:  -0.756
       3rd Qu.:  -0.583
          Max.:   0.147

=================================================================================================

   FreqBodyBodyGyroJerkMag-std()

-------------------------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -0.998
       1st Qu.:  -0.980
        Median:  -0.894
          Mean:  -0.771
       3rd Qu.:  -0.608
          Max.:   0.288


