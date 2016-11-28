# Code Book for Wearable Computing Data

## General information on data and measurement variables

This information comes from the readme.txt and features_info.txt documents included with the experiment data.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, standing, sitting, laying down) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.

The measurements in these data sets come from the accelerometer and gyroscope 3-axial raw signals time-accelerometer-x, y, and z axes and time-gyroscope-x, y, and z axes. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time-bodyaccelerometer-x, y and z axes and time-gravityaccelerometer-x, y, and z axes) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time-bodyaccelerometerjerk-x, y, and z axes and time-bodygyroscopejerk-x, y, and z axes). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (time-bodyaccelerometermagnitude, time-gravityaccelerometermagnitude, time-bodyaccelerometerjerkmagnitude, time-bodygyroscopemagnitude, time-bodygyroscopejerkmagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency-bodyaccelerometer-x, y, and z axes, frequency-bodyaccelerometerjerk-x, y, and z axes, frequence-bodygyroscope-x, y, and z axes, frequency-bodyaccelerometerjerkmagnitude, frequency-bodygyroscopemagnitude, and frequency-bodygyroscopejerkmagnitude. (Note the 'frequency' indicates frequency domain signals). 

Many variables were estimated from these signals and are included in the complete data set, but the tables here include only two: the mean and standard deviation of each. All variables are normalized and are bounded by [-1,1].

## tidyData
1. subjectid  
    An id number identifying the subject performing the activity. Range is integers from 1 to 30.

2. activity  
    A factor indicating the activity the subject was doing.
    
    laying down  
    sitting  
    standing  
    walking  
    walking downstairs  
    walking upstairs  

Columns 3 to 68 contain the mean and standard deviation of each measurement described above. All ranges are between -1 and 1.  

3. time-bodyaccelerometer-mean-xaxis  
4. time-bodyaccelerometer-mean-yaxis  
5. time-bodyaccelerometer-mean-zaxis  
6. time-bodyaccelerometer-standarddeviation-xaxis  
7. time-bodyaccelerometer-standarddeviation-yaxis  
8. time-bodyaccelerometer-standarddeviation-zaxis  
9. time-gravityaccelerometer-mean-xaxis  
10. time-gravityaccelerometer-mean-yaxis  
11. time-gravityaccelerometer-mean-zaxis  
12. time-gravityaccelerometer-standarddeviation-xaxis  
13. time-gravityaccelerometer-standarddeviation-yaxis  
14. time-gravityaccelerometer-standarddeviation-zaxis  
15. time-bodyaccelerometerjerk-mean-xaxis  
16. time-bodyaccelerometerjerk-mean-yaxis  
17. time-bodyaccelerometerjerk-mean-zaxis  
18. time-bodyaccelerometerjerk-standarddeviation-xaxis  
19. time-bodyaccelerometerjerk-standarddeviation-yaxis  
20. time-bodyaccelerometerjerk-standarddeviation-zaxis  
21. time-bodygyroscope-mean-xaxis  
22. time-bodygyroscope-mean-yaxis  
23. time-bodygyroscope-mean-zaxis  
24. time-bodygyroscope-standarddeviation-xaxis  
25. time-bodygyroscope-standarddeviation-yaxis  
26. time-bodygyroscope-standarddeviation-zaxis  
27. time-bodygyroscopejerk-mean-xaxis  
28. time-bodygyroscopejerk-mean-yaxis  
29. time-bodygyroscopejerk-mean-zaxis  
30. time-bodygyroscopejerk-standarddeviation-xaxis  
31. time-bodygyroscopejerk-standarddeviation-yaxis  
32. time-bodygyroscopejerk-standarddeviation-zaxis  
33. time-bodyaccelerometermagnitude-mean  
34. time-bodyaccelerometermagnitude-standarddeviation  
35. time-gravityaccelerometermagnitude-mean  
36. time-gravityaccelerometermagnitude-standarddeviation  
37. time-bodyaccelerometerjerkmagnitude-mean  
38. time-bodyaccelerometerjerkmagnitude-standarddeviation  
39. time-bodygyroscopemagnitude-mean  
40. time-bodygyroscopemagnitude-standarddeviation  
41. time-bodygyroscopejerkmagnitude-mean  
42. time-bodygyroscopejerkmagnitude-standarddeviation  
43. frequency-bodyaccelerometer-mean-xaxis  
44. frequency-bodyaccelerometer-mean-yaxis  
45. frequency-bodyaccelerometer-mean-zaxis  
46. frequency-bodyaccelerometer-standarddeviation-xaxis  
47. frequency-bodyaccelerometer-standarddeviation-yaxis  
48. frequency-bodyaccelerometer-standarddeviation-zaxis  
49. frequency-bodyaccelerometerjerk-mean-xaxis  
50. frequency-bodyaccelerometerjerk-mean-yaxis  
51. frequency-bodyaccelerometerjerk-mean-zaxis  
52. frequency-bodyaccelerometerjerk-standarddeviation-xaxis  
53. frequency-bodyaccelerometerjerk-standarddeviation-yaxis  
54. frequency-bodyaccelerometerjerk-standarddeviation-zaxis  
55. frequency-bodygyroscope-mean-xaxis  
56. frequency-bodygyroscope-mean-yaxis  
57. frequency-bodygyroscope-mean-zaxis  
58. frequency-bodygyroscope-standarddeviation-xaxis  
59. frequency-bodygyroscope-standarddeviation-yaxis  
60. frequency-bodygyroscope-standarddeviation-zaxis  
61. frequency-bodyaccelerometermagnitude-mean  
62. frequency-bodyaccelerometermagnitude-standarddeviation  
63. frequency-bodybodyaccelerometerjerkmagnitude-mean  
64. frequency-bodybodyaccelerometerjerkmagnitude-standarddeviation  
65. frequency-bodybodygyroscopemagnitude-mean  
66. frequency-bodybodygyroscopemagnitude-standarddeviation  
67. frequency-bodybodygyroscopejerkmagnitude-mean  
68. frequency-bodybodygyroscopejerkmagnitude-standarddeviation  

69. record
    A record id number. Range is integers from 1 to 10299.
    
## wearableAverages
1. subjectid  
    An id number identifying the subject performing the activity. Range is integers from 1 to 30.

2. activity  
    A factor indicating the activity the subject was doing.
    
    laying down  
    sitting  
    standing  
    walking  
    walking downstairs  
    walking upstairs  

3. variable  
    Indicates the measurement being averaged.
    
    time-bodyaccelerometer-mean-xaxis  
    time-bodyaccelerometer-mean-yaxis  
    time-bodyaccelerometer-mean-zaxis  
    time-bodyaccelerometer-standarddeviation-xaxis  
    time-bodyaccelerometer-standarddeviation-yaxis  
    time-bodyaccelerometer-standarddeviation-zaxis  
    time-gravityaccelerometer-mean-xaxis  
    time-gravityaccelerometer-mean-yaxis  
    time-gravityaccelerometer-mean-zaxis  
    time-gravityaccelerometer-standarddeviation-xaxis  
    time-gravityaccelerometer-standarddeviation-yaxis  
    time-gravityaccelerometer-standarddeviation-zaxis  
    time-bodyaccelerometerjerk-mean-xaxis  
    time-bodyaccelerometerjerk-mean-yaxis  
    time-bodyaccelerometerjerk-mean-zaxis  
    time-bodyaccelerometerjerk-standarddeviation-xaxis  
    time-bodyaccelerometerjerk-standarddeviation-yaxis  
    time-bodyaccelerometerjerk-standarddeviation-zaxis  
    time-bodygyroscope-mean-xaxis  
    time-bodygyroscope-mean-yaxis  
    time-bodygyroscope-mean-zaxis  
    time-bodygyroscope-standarddeviation-xaxis  
    time-bodygyroscope-standarddeviation-yaxis  
    time-bodygyroscope-standarddeviation-zaxis  
    time-bodygyroscopejerk-mean-xaxis  
    time-bodygyroscopejerk-mean-yaxis  
    time-bodygyroscopejerk-mean-zaxis  
    time-bodygyroscopejerk-standarddeviation-xaxis  
    time-bodygyroscopejerk-standarddeviation-yaxis  
    time-bodygyroscopejerk-standarddeviation-zaxis  
    time-bodyaccelerometermagnitude-mean  
    time-bodyaccelerometermagnitude-standarddeviation  
    time-gravityaccelerometermagnitude-mean  
    time-gravityaccelerometermagnitude-standarddeviation  
    time-bodyaccelerometerjerkmagnitude-mean  
    time-bodyaccelerometerjerkmagnitude-standarddeviation  
    time-bodygyroscopemagnitude-mean  
    time-bodygyroscopemagnitude-standarddeviation  
    time-bodygyroscopejerkmagnitude-mean  
    time-bodygyroscopejerkmagnitude-standarddeviation  
    frequency-bodyaccelerometer-mean-xaxis  
    frequency-bodyaccelerometer-mean-yaxis  
    frequency-bodyaccelerometer-mean-zaxis  
    frequency-bodyaccelerometer-standarddeviation-xaxis  
    frequency-bodyaccelerometer-standarddeviation-yaxis  
    frequency-bodyaccelerometer-standarddeviation-zaxis  
    frequency-bodyaccelerometerjerk-mean-xaxis  
    frequency-bodyaccelerometerjerk-mean-yaxis  
    frequency-bodyaccelerometerjerk-mean-zaxis  
    frequency-bodyaccelerometerjerk-standarddeviation-xaxis  
    frequency-bodyaccelerometerjerk-standarddeviation-yaxis  
    frequency-bodyaccelerometerjerk-standarddeviation-zaxis  
    frequency-bodygyroscope-mean-xaxis  
    frequency-bodygyroscope-mean-yaxis  
    frequency-bodygyroscope-mean-zaxis  
    frequency-bodygyroscope-standarddeviation-xaxis  
    frequency-bodygyroscope-standarddeviation-yaxis  
    frequency-bodygyroscope-standarddeviation-zaxis  
    frequency-bodyaccelerometermagnitude-mean  
    frequency-bodyaccelerometermagnitude-standarddeviation  
    frequency-bodybodyaccelerometerjerkmagnitude-mean  
    frequency-bodybodyaccelerometerjerkmagnitude-standarddeviation  
    frequency-bodybodygyroscopemagnitude-mean  
    frequency-bodybodygyroscopemagnitude-standarddeviation  
    frequency-bodybodygyroscopejerkmagnitude-mean  
    frequency-bodybodygyroscopejerkmagnitude-standarddeviation  

4. mean(value)  
    Average value for the subject, activity, and variable combination. Range is -1 to 1.