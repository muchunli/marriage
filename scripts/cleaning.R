#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers
# Author:muchun li
# Date: 2024.9.19
# Contact: linicole102021@gmail.com
# License: MIT
# Pre-requisites: none
# Any other information needed? none

#### Workspace setup ####
library(tidyverse)
library(janitor)
#### Clean data ####
raw_data <- read_csv("inputs/data/plane_data.csv")

data_raw <- read_csv("data/data_raw.csv")
data_cleaned <- clean_names(data_raw)
#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")
