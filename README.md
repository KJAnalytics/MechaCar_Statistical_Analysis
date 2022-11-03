# MechaCar_Statistical_Analysis

##Project Scope
Investigation has been requested by the leadership team @ Mechacar to evaluate current production data.  Outputs include a Linear Regression to predict mpg for the vehicles.  Data was requested by to provide insight for the manufacturing team to look at improvements.  

##Resources
- MechaCar_mpg.csv, Suspension_Coils.csv
- Software: RStudio, R, Visual Studio Code, 1.38.1

https://github.com/KJAnalytics/MechaCar_Statistical_Analysis/blob/main/Images/RStudio-Screenshot.jpg

## Analysis/Results

### Linear Regression to Predict MPG
Based on  outputs from the linear regression, the factors with the most significant impact on mpg are ground clearance and vehicle length as show by the coefficients noted below.  These variables have large positive slopes along with a p-value of 5.35⁻¹¹.  In addition, the r² value for the model is 0.7149 with an adjusted r² of      0.6825. These results indicate that the factors modeled are variables that all impact mpg to some degree. As such this is an effective model for predicting mpg for any future structural changes proposed.

https://github.com/KJAnalytics/MechaCar_Statistical_Analysis/blob/main/Images/Linear%2BRegression_1.jpg
https://github.com/KJAnalytics/MechaCar_Statistical_Analysis/blob/main/Images/Summary_Stats_Deliverable1.jpg

###Coil Performance 
#### Summary Stats
- Reviewing the lot and summary statistics for the suspension coils, Lot 3 should be considered out of specification and lot 2 is directional more variable than lot 1. Significant population variance is noted with Lot 3 production at 170.3 psi  and also exhibits an increased standard deviation at 13 psi.  In addition that same lot has a mean shift of 4 psi and a median shift of 2 psi.  This is significant as the design specification for the coils must be within 100 lbs/sq. in.  At 170 lot 3 is outside of design tolerances. 

https://github.com/KJAnalytics/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable%202%20-%20Summary-stats.jpg

#### T-testing 
Based on the out of specification results noted with Lot 3, t-tests were conducted to quantify the lot to lot variability for these production runs.  
- Means were compared to a target of mu = 1500 psi.
- Samples tested included total population, Lot1, Lot2, and Lot3
- Hypothesis is the population and or Lot means are equal to mu 1500 psi while the alternative hypothesis is that the true mean is not equal to 1500.
- Calculations were made with a 95% confidence interval.
- Stats are shown below.

In terms of mean values, based on p-values The p-value of Lot 3 is 0.042 so we can reject the null hypothesis and conclude that the psi in Lot 3 is statistically different. While lots 1 & 2 we are not able to reject the null hypothesis with p-values of 1.0 and 0.6072 respectively.

https://github.com/KJAnalytics/MechaCar_Statistical_Analysis/blob/main/Images/T-test%2BCoil%20PSI-mu1500-Deliverable%203.jpg
https://github.com/KJAnalytics/MechaCar_Statistical_Analysis/blob/main/Images/T-test-subset_Lot2.jpghttps://github.com/KJAnalytics/MechaCar_Statistical_Analysis/blob/main/Images/T-test-subset-Lot%201-CoilPSI.jpg
https://github.com/KJAnalytics/MechaCar_Statistical_Analysis/blob/main/Images/T-test-subset-Lot%203-CoilPSI.jpg

## Study Design: comparing MechaCar to a competitor
Study the relationship between Vehicle weight and horsepower generated.

Data to collect:
- Fuel mpg actual.
- Horsepower
- NHSTA safety data
- Vehicle weight

The Null hypothesis would be that there is no statistical relationship between fuel economy and vehicle weight.  The alternative hypothesis would be that vehicle weight, engine horsepower lead to lower fuel economy.

First pass analysis would include linear regression and t-testing.  Based on those results, it is likely that additional factors would need to be included and lead into multivariate analysis. 

The data points listed above could be added to coil and the other structural/wind related performance variables to create an improved model. 












