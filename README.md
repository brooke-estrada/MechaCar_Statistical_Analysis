# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
We ran a multiple linear regression to predict the MPG on the prototype car. The regression model accounts for 71% of the variance with a degrees of freedom of 44 and an R-squared value of 0.7149. Our coefficients included spoiler angle, vehicle length, vehicle weight, ground clearance, and AWD. Vehicle length and ground_clearance were able to significantly predict mpg with a p-value > 0.01. For our analysis, we used spoiler_angle as one of the independent variables, and it was not able to significantly predict the mpg variable. However, since we had two significant coefficients, the slope was not zero. The p-value and r-squared value determined the model does effectively predict the MechaCar prototype, but this may be the result of an overfitted model.
![](https://i.imgur.com/zIvZoU0.png)

## Summary Statistics on Suspension Coils
Lot 1 and 2 meet the design specifications with the variance under 100 pounds per square inch. However, Lot 3 did not meet this expectation with a variance of 170.
#### Total Summary:
![](https://i.imgur.com/zVn0Tru.png)

#### Lot Summary:
![](https://i.imgur.com/Uj43uV3.png)

## T-Tests on Suspension Coils
Lot 1 had a p-value of 1.0, and therefore, we could not reject the null hypothesis as there were potential similarities between the data. Similar to Lot 2, with a p-value of 0.61, we could not reject the null hypothesis. Lot 3 had a p-value of 0.04, which was less than 0.05, and therefore, we could reject the null hypothesis. Below are the results of the t-tests.
### Lot 1 Suspension Coils t-Test
![](https://i.imgur.com/n3m80Vo.png)

### Lot 2 Suspension Coils t-Test
![](https://i.imgur.com/CRB26kT.png)

### Lot 3 Suspension Coils t-Test
![](https://i.imgur.com/kioH8Zd.png)

## Study Design: MechaCar vs Competition
Horsepower is a significant aspect of luxury and overall powerful vehicles. For this study, we can look at the horsepower of the MechCar prototype and compare it to other car manufacturers. The null hypothesis is horsepower would not be significantly different from other vehicles, and the alternative hypothesis is horsepower in the prototype is significantly different and ideally better than its competitors. 

For this study, an ANOVA test would be sufficient because of the ability to compare more than one population to the prototype. We can compare multiple competitors to the prototype on horsepower. Ultimately, we could bring in other factors such as fuel efficiency to further define the prototype's performance and compare it to the competition. For this analysis, we will need data from competitors. This data set could include items such as horsepower, Engine type, transmission, fuel, efficiency, PSI, tire_size, vehicle_length, and vehicle_weight.
