#### Preamble ####
# Purpose: Simulate data about CAF dataset and make a table
# Author: George Zhiqi Chen
# Email: georgezhiqichen.chen@mail.utoronto.ca
# Date: 29 April 2022
# Prerequisites: Click and Load Each data before run the simulation code and the table will shown below 

#### Workspace set-up ####
install.packages("lubridate")

library(knitr)
library(janitor)
library(lubridate)
library(tidyverse)
library(tidyr)

#### Simulate ####
# 1.Simulate CAF Officers and NCM's total number from year 1997-2020
# Keep the Total number the same but simulates the Officers and Non-Conmissioned members's data.
#The data is basically how I want the data to look like.This is what data should look like

set.seed(853)

simulated_CAF_member_data <- 
  tibble(
    year = 
      c(1997:2020),
    officers = 
      runif(n = 24,
            min = 13000,
            max = 55000),
    ncm = 
      runif(n = 24,
            min = 48000,
            max = 55000),
    total = 
      c(officers + ncm)
  )


head(simulated_CAF_member_data)



# 2.Simulate CAF Officers and NCM's total attrition number from year 1998-2020
# Keep the Total Attrition number the same but simulates the Officers and Non-Conmissioned members's attrition data.
#The data is basically how I want the data to look like.This is what data should look like

set.seed(853)

simulated_CAF_Attrition_data <- 
  tibble(
    year = 
      c(1998:2020),
    officers = 
      runif(n = 23,
            min = 13000,
            max = 55000),
    ncm = 
      runif(n = 23,
            min = 48000,
            max = 55000),
    total = 
      c(officers + ncm)
  )


head(simulated_CAF_Attrition_data)


# 3.Simulate CAF Officers and NCM's English and French Speakers number from year 1997-2020
# Simulates the Officers and Non-Conmissioned members's differente language group.
#The data is basically how I want the data to look like.This is what data should look like

set.seed(853)

simulated_CAF_speaker_data <- 
  tibble(
    year = 
      c(1997:2020),
    Francophone_Officers = 
      runif(n = 24,
            min = 13000,
            max = 55000),
    Francophone_NCM = 
      runif(n = 24,
            min = 48000,
            max = 55000),
    Anglophone_Officers = 
      runif(n = 24,
            min = 48000,
            max = 55000),
    Anglophone_NCM = 
      runif(n = 24,
            min = 48000,
            max = 55000),
    
  )


head(simulated_CAF_speaker_data)



# 4.Simulate CAF Officers Education level trend from year 1997-2018
# Simulates the Officers Education level requirment's trend.
#The data is basically how I want the data to look like.This is what data should look like

set.seed(853)

simulated_CAF_Officer_Edulevel_data <- 
  tibble(
    year = 
      c(1997:2020),
    Master_and_Above = 
      runif(n = 24,
            min = 13000,
            max = 55000),
    Bachelors = 
      runif(n = 24,
            min = 48000,
            max = 55000),
    College_CEGEP_Technical = 
      runif(n = 24,
            min = 48000,
            max = 55000),
    High_School = 
      runif(n = 24,
            min = 48000,
            max = 55000),
    Less_Than_High_School = 
      runif(n = 24,
            min = 48000,
            max = 55000)
    
  )


head(simulated_CAF_Officer_Edulevel_data)



# 5.Simulate CAF Non-Conmissioned member's Education level trend from year 1997-2018
# Simulates the NCM Education level requirment's trend.
#The data is basically how I want the data to look like.This is what data should look like

set.seed(853)

simulated_CAF_ncm_Edulevel_data <- 
  tibble(
    year = 
      c(1997:2020),
    Master_and_Above = 
      runif(n = 24,
            min = 13000,
            max = 55000),
    Bachelors = 
      runif(n = 24,
            min = 48000,
            max = 55000),
    College_CEGEP_Technical = 
      runif(n = 24,
            min = 48000,
            max = 55000),
    High_School = 
      runif(n = 24,
            min = 48000,
            max = 55000),
    Less_Than_High_School = 
      runif(n = 24,
            min = 48000,
            max = 55000)
    
  )


head(simulated_CAF_ncm_Edulevel_data)
