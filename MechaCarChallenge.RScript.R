#Part 1
library(dplyr)
MechaCar <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors = F) #Read in csv to dataframe
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))#generate summary statistics

#Part 2
SuspCoil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors = F) #Read in csv to table
total_summary <- SuspCoil %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table
lot_summary <- SuspCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

#Part 3
t.test(SuspCoil$PSI, mu=1500) #T-test all lots
t.test(subset(SuspCoil, Manufacturing_Lot=="Lot1")$PSI, mu=1500) #T Test for lot 1
t.test(subset(SuspCoil, Manufacturing_Lot=="Lot2")$PSI, mu=1500) #T Test for lot 2
t.test(subset(SuspCoil, Manufacturing_Lot=="Lot3")$PSI, mu=1500) #T test for lot 3
