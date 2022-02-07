# libraries
library(tidyverse)
library(dplyr)

# Read in data
mechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
suspens_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Deliverable 1
# Linear Regression Model
mecha_lm <- lm(mpg ~ AWD + vehicle_length + vehicle_weight + spoiler_angle + ground_clearance, data=mechaCar_mpg) #create linear model
summary(lm(mpg ~ AWD + vehicle_length + vehicle_weight + spoiler_angle + ground_clearance, data=mechaCar_mpg)) #summarize linear model

# Plot LM
# yvals <- mecha_lm$coefficients['AWD']*mecha_lm$AWD +
# mecha_lm$coefficients['(Intercept)'] #determine y-axis values from linear model
# plt <- ggplot(mecha_lm,aes(x=AWD,y=mpg)) #import dataset into ggplot2
# plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# Deliverable 2
total_summary <- suspens_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI),.groups = 'keep')
lot_summary <- suspens_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')

print(total_summary)
print(lot_summary)




