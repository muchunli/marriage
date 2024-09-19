ta#### Preamble ####
# Purpose: Downloads and saves the data from opendatatoronto
# Author: muchun li
# Date: 2024.9.19
# Contact: linicole102021@gmail.com
# License: MIT
# Pre-requisites: none
# Any other information needed? none


#### Workspace setup ####
install.packages('opendatatoronto')
install.packages('tidyverse')
install.packages('dplyr')
library(opendatatoronto)
library(tidyverse)
library(dplyr)

# [...UPDATE THIS...]
package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

# get all resources for this package
resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

# identify datastore resources;
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data_raw <- filter(datastore_resources, row_number()==1) %>% get_resource()

#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]



#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
