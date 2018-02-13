
library(tidyverse)

data <- read_csv("./sfg_fishing_data.csv")

test <- data %>%
  group_by(species_code) %>%
  summarize(n = n(),
            max = max(length),
            mean = mean(length),
            median = median(length),
            stdev = sd(length),
            min = min(length)) 