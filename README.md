# MechaCar_Statistical_Analysis
Statistical study to review production data and compare vehicle performance from client's vehicles against vehicles from other manufacturers.

## Overview
This project will explore vehicle prototype production data from MechaCar utilizing RStudio to perform statistical analytics and determine trends in the production that may help the manufacturing team.

## Summary 

### Linear Regression to Predict MPG

The first part of the analysis utilizes RStudio to perform a multiple linear regression analysis in order to identify which variables in the manufacturing data predict the mpg of MechaCar prototypes.  The data contain mpg test results for 50 vehicle prototypes that were produced using multiple design specifications to identify ideal vehicle performance. The dataset includes several metrics for each vehicle including, vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. 

The following screenshot is the metrics summary from the multiple linear regression performed:
![LinRegModel](/Images/LinRegModel.PNG)

The coefficient of determination (r^2) for the regression model is 0.71 indicating a moderately robust model.  The calculated p-value for the combined model is much less than the 0.05 significance threshold indicating that there are non-random influences in the dataset.  The individual variables that demonstrate non-random contributions (based on individual p-values) include vehicle length and ground clearance, both of which contribute a positive (non-zero) trend toward the slope based on the calculated coefficients for the individual variables.  However, several of the other variables used in the model lack significant contributions. 

Furthermore, the intercept term is statistically significant indicating a considerable amount of variability in the dependent variable and it is likely due to other variables that are not included in this dataset that may produce a stronger model.  For that reason, it would not be advisable to use this model to predict mpg for MechaCar prototypes.

### Summary Statistics on Suspension Coils

The second analysis utilizes RStudio and suspension coil manufacturing data from multiple production lots to create summary statistics and test for consistency in production.  First, the suspension coil PSI measurements are checked for variability among the full dataset by generating a summary table “total_summary” to examine mean, median, variance, and standard deviation of the suspension coil’s PSI:
 ![total_summary](/Images/total_summary.png) 

Next, the PSI metrics are grouped for each manufacturing lot to examine variability in the summary statistics between lots in the “lot_summary” shown below:
![lot_summary](/Images/lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed pounds per square inch.  Based on the total summary, the variance is not exceeded for the total production data.  However, when the variance is computed based on individual lots, it is clear that Lot 3 with a variance of 170.29 psi is exceeding the allowable variance in manufacturing.  Lots 1 and 2 are well within the allowable variance.

