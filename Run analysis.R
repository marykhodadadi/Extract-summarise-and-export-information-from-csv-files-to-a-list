
# looks for files that have .csv as part of the filename in the the working directory
files <- dir(pattern = ".csv$")

# The code below takes that list of files, pipes it to a map function that
# runs read_csv on each file
library(purrr)
Datasets <- files %>% map(read.csv)
library(dplyr)

# Finds Data Frame with highest trading volume in individual years
# and their relation to yearly average

max_perc_vol <- files %>% map(read.csv) %>% map(~select(., date, vol)) %>%
  map(~group_by(., year = as.POSIXlt(date)$year + 1900)) %>%
  map(~summarise(., vol= max(vol))) %>%
  map(~mutate(., proportionofyearlyavgvol= (vol / mean(vol) / 100)))

# Vector of lowest and highest prices combined
min_max_5 <- files %>% map(read.csv) %>% map(~select(., date, max, min)) %>%
  map(~arrange(., desc(max))) %>%
  map(~arrange(., desc(min))) %>%
  map(~head(., n=5))