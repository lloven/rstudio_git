# targets main configuration file.

library(targets)
library(tidyverse)

source("R/functions.R")
tar_option_set(packages = c("readr", "dplyr", "ggplot2"))

list(
  tar_target(penguins_file, "data/penguins.csv", format = "file"),
  tar_target(penguins_data, get_penguins_data(penguins_file)),
  tar_target(penguins_plot, explore_penguins_data(penguins_data))
)
