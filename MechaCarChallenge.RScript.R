# libraries
library(tidyverse)
library(dplyr)

# Read in data
mechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
suspens_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Deliverable 1
# Linear Regression Model
mecha_lm <- lm(mpg ~ spoiler_angle + vehicle_length + vehicle_weight + ground_clearance + AWD, data=mechaCar_mpg) #create linear model
summary(lm(mpg ~ spoiler_angle + vehicle_length + vehicle_weight + ground_clearance + AWD, data=mechaCar_mpg)) #summarize linear model

# Plot LM
yvals <- mecha_lm$coefficients['spoiler_angle']*mechaCar_mpg$spoiler_angle +
mecha_lm$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(mechaCar_mpg,aes(x=spoiler_angle,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# Deliverable 2
total_summary <- suspens_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI),.groups = 'keep')
lot_summary <- suspens_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')

print(total_summary)
print(lot_summary)

# Deliverable 3
psi_ttest <- t.test(log10(suspens_coil$PSI), ,mu=1500)

# Subset t-Tests
lot1 <- subset(suspens_coil,Manufacturing_Lot=="Lot1")
t.test(lot1$PSI, mu=1500)

lot2 <- subset(suspens_coil,Manufacturing_Lot=="Lot2")
t.test(lot2$PSI, mu=1500)

lot3 <- subset(suspens_coil,Manufacturing_Lot=="Lot3")
t.test(lot3$PSI, mu=1500)

