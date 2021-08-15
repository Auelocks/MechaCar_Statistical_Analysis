# Dependencies
library(tidyverse)
library(dplyr)

# Import data
MechaCar_df<-read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
sps_coil<-read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Create linear regression model
MechaCar_lm<- lm(mpg~vehicle_weight+vehicle_length+spoiler_angle+
                   ground_clearance+AWD,data = MechaCar_df)
# Statistical metrics from regression model
summary(MechaCar_lm)

# Create statistic summary dataframe from sps_coil PSI data
total_summary<-sps_coil %>% 
  summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI),.groups ='keep')

# Create statistic summary to group by manufacturing lots
lot_summary<-sps_coil%>%group_by(Manufacturing_Lot)%>%
  summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI),.groups ='keep')


