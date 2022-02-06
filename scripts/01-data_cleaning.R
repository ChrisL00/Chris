#### Preamble ####
# Purpose: Clean the survey data downloaded from Open Data Toronto
# Author: Chenyu Lin
# Data: 5 February 2022
# Contact: chrischenyu.lin@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
library(opendatatoronto)
library(tidyverse)

# clear the data, take out NA data
data_new <- data %>%
  filter(ELEVATORS >= 1, ELEVATORS <=5) %>%
  filter(BALCONY_GUARDS >=1, BALCONY_GUARDS <=5)