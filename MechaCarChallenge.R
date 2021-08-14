# Dependencies
library(tidyverse)
library(dplyr)

# Import data
MechaCar_df<-read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Create linear regression model
MechaCar_lm<- lm(mpg~vehicle_weight+vehicle_length+spoiler_angle+
                   ground_clearance+AWD,data = MechaCar_df)
# Statistical metrics from regression model
summary(MechaCar_lm)
