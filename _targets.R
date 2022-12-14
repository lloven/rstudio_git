# targets main configuration file.

library(targets)

source("R/functions.R")
tar_option_set(packages = c("tidyverse"))

list(
  tar_target(penguins_file, "data/penguins.csv", format = "file"),
  tar_target(penguins_data, get_penguins_data(penguins_file)),
  tar_target(penguins_scatter_plot, scatter_penguins(penguins_data))
)
