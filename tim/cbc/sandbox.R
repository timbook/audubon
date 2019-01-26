options(stringsAsFactors = FALSE)
library(tidyverse)

cbc <- read.csv("data/cbc_effort.csv")

as.numeric('3,1')

cbc$am_snow_num <- as.numeric(cbc$am_snow)
table(is.na(cbc$am_snow_num))

cbc$am_snow[is.na(cbc$am_snow_num)]

cbc %>% 
  filter(n_field_counters == 0) %>% 
  View()
