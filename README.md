# MechaCar_Statistical_Analysis

## Part 1: Linear Regression to Predict MPG

Vehicle length and ground clearacne provided a non-random amount of variance to the mpg values in the dataset as they both had a p-value of 2.60e-12 and 5.21e-08 respectively. Since this is lower than the standard of .05, this means these are statistically signficant, indicating that the null hypthosis can be rejected. 

The slope of the linear model will not be considered zero because of the dependent variable. 

The linear model's R-squared value has an acceptable number - proving this to be an effective measurement of mpg. 

## Part 2: Create Visualizations for the Trip Analysis 

The design specifications are not being met for Lot 3 as it has a variance of 170.2. Across all three lots, however, the current manufacturing data meet this design specification when they are grouped. 

## Part 3: T-Tests on Suspension Coils

The p-values for Lots 1 and 2 are 1 and .61 - meaning these are not statistically significant as far as the population mean in the sample data. However, for Lot 3, the p-value was .041 - meaning that PSI population mean for Lot 3 is statistically significant. 

## Part 4: Study Design: MechaCar vs Competition

In order to compare MechaCar to its competition, we could do a test on its highway fuel efficiency. The null hypothesis is that MechaCar's highway fuel efficiency has no impact on highway fuel efficiency when compared to its competitors. The alternative hypothesis is that MechaCar has a statistically significant difference in highway fuel efficiency compared to its competition. In order to measure this, we could do a similar test we did in the module challenge. We could do a linear regression model using highway mpg given a set of other variables to measure. 
