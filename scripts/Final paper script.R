#### Preamble ####
# Purpose: Clean the  data downloaded from open data Canada
# Author: George Zhiqi Chen
# Data: 26 April 2022
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the data and saved it to inputs/data


#### Workspace setup ####
install.packages("readxl")

library(tidyverse)
library(readr)
library(janitor)
library(bookdown)
library(haven)
library("readxl")
library(tibble)

# Read in each dataset. 
CAF_total_number <- read_csv("CAF total number.csv")
CAF_attrition <- read_csv("CAF attrition.csv")
CAF_speaker <- read_csv("CAF eng&fren speaker.csv")
CAF_ncm_education_level <- read_excel("CAF ncm education level.xlsx")
CAF_officer_education_level <- read_excel("CAF officer education level.xlsx")
CAF_social_group <- read_csv("CAF social group.csv")
#CAF_total_admission <- read_csv("CAF total admission.csv")


# clean CAF total number dataset. 
CAF_total_number_1 <- t(CAF_total_number)

CAF_total_number_1 <- CAF_total_number_1[-c(1), ]
CAF_total_number_1 <- cbind(Row.Names = rownames(CAF_total_number_1), CAF_total_number_1)
colnames(CAF_total_number_1)[1] <- "year"
colnames(CAF_total_number_1)[2] <- "Officers"
colnames(CAF_total_number_1)[3] <- "NCM"
colnames(CAF_total_number_1)[4] <- "Total"

CAF_total_number_2 <- data.frame(CAF_total_number_1)



# clean CAF attrition dataset. 
CAF_attrition_1 <- t(CAF_attrition)

CAF_attrition_1 <- CAF_attrition_1[-c(1), ]
CAF_attrition_1 <- cbind(Row.Names = rownames(CAF_attrition_1), CAF_attrition_1)
colnames(CAF_attrition_1)[1] <- "year"
colnames(CAF_attrition_1)[2] <- "Officers"
colnames(CAF_attrition_1)[3] <- "NCM"
colnames(CAF_attrition_1)[4] <- "Total"

CAF_attrition_2 <- data.frame(CAF_attrition_1)




# clean CAF Eng&Fren speaker dataset. 
CAF_speaker_1 <- t(CAF_speaker)

CAF_speaker_1 <- CAF_speaker_1[-c(1), ]
CAF_speaker_1 <- cbind(Row.Names = rownames(CAF_speaker_1), CAF_speaker_1)
colnames(CAF_speaker_1)[1] <- "year"
colnames(CAF_speaker_1)[2] <- "Francophone_Officers"
colnames(CAF_speaker_1)[3] <- "Francophone_NCM"
colnames(CAF_speaker_1)[4] <- "Anglophone_Officers"
colnames(CAF_speaker_1)[5] <- "Anglophone_NCM"

CAF_speaker_2 <- data.frame(CAF_speaker_1)



# clean CAF officer education level dataset.

CAF_officer_education_level <- CAF_officer_education_level[-c(6, 7), ]


CAF_officer_education_level_1 <- t(CAF_officer_education_level)

CAF_officer_education_level_1 <- CAF_officer_education_level_1[-c(1), ]
CAF_officer_education_level_1 <- cbind(Row.Names = rownames(CAF_officer_education_level_1), CAF_officer_education_level_1)
colnames(CAF_officer_education_level_1)[1] <- "year"
colnames(CAF_officer_education_level_1)[2] <- "Masters_and_Above"
colnames(CAF_officer_education_level_1)[3] <- "Bachelors"
colnames(CAF_officer_education_level_1)[4] <- "College_CEGEP_Technical"
colnames(CAF_officer_education_level_1)[5] <- "High_School"
colnames(CAF_officer_education_level_1)[6] <- "Less_Than_High_School"


CAF_officer_education_level_2 <- data.frame(CAF_officer_education_level_1)



# clean CAF Non_comissioned member education level dataset.

CAF_ncm_education_level <- CAF_ncm_education_level[-c(6, 7), ]


CAF_ncm_education_level_1 <- t(CAF_ncm_education_level)

CAF_ncm_education_level_1 <- CAF_ncm_education_level_1[-c(1), ]
CAF_ncm_education_level_1 <- cbind(Row.Names = rownames(CAF_ncm_education_level_1), CAF_ncm_education_level_1)
colnames(CAF_ncm_education_level_1)[1] <- "year"
colnames(CAF_ncm_education_level_1)[2] <- "Masters_and_Above"
colnames(CAF_ncm_education_level_1)[3] <- "Bachelors"
colnames(CAF_ncm_education_level_1)[4] <- "College_CEGEP_Technical"
colnames(CAF_ncm_education_level_1)[5] <- "High_School"
colnames(CAF_ncm_education_level_1)[6] <- "Less_Than_High_School"


CAF_ncm_education_level_2 <- data.frame(CAF_ncm_education_level_1)




# clean CAF social group dataset.

colnames(CAF_social_group)[2] <- "Women"
colnames(CAF_social_group)[3] <- "Aboriginal People"
colnames(CAF_social_group)[4] <- "Visible Minorities"
colnames(CAF_social_group)[5] <- "Persons with Disabilities"
CAF_social_group <- CAF_social_group[-c(4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23), ]
CAF_social_group <- subset(CAF_social_group, select = -c(6,7,8,9,10,11,12,13) )


CAF_social_group_1 <- t(CAF_social_group)

CAF_social_group_1 <- CAF_social_group_1[-c(1), ]
CAF_social_group_1 <- cbind(Row.Names = rownames(CAF_social_group_1), CAF_social_group_1)
CAF_social_group_2 <- data.frame(CAF_social_group_1)

colnames(CAF_social_group_2)[1] <- "Group"
colnames(CAF_social_group_2)[2] <- "Officers"
colnames(CAF_social_group_2)[3] <- "NCM"
colnames(CAF_social_group_2)[4] <- "Total"


# save clean CAF social group dataset.
write_csv(CAF_total_number_2, "CAF_total_number_2.csv")
write_csv(CAF_attrition_2, "CAF_attrition_2.csv")
write_csv(CAF_speaker_2, "CAF_speaker_2.csv")
write_csv(CAF_officer_education_level_2, "CAF_officer_education_level_2.csv")
write_csv(CAF_ncm_education_level_2, "CAF_ncm_education_level_2.csv")
write_csv(CAF_social_group_2, "CAF_social_group_2.csv")


