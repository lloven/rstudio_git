# R/functions.R

get_penguins_data <- function(file) {
  read_csv(file, col_types = cols()) %>%
    filter(!is.na(sex))
}

scatter_penguins <- function(penguins_data) {
  ggplot(
    data = penguins_data,
    aes(x = flipper_length_mm, y = body_mass_g)
  ) +
    geom_point(aes(color = species,
                   shape = species),
               size = 2) +
    scale_color_manual(values = c("darkorange","darkorchid","cyan4"))
}


hist_penguins <- function(penguins_data) {
  ggplot(data = penguins_data, aes(x = flipper_length_mm)) +
    geom_histogram(aes(fill = species), alpha = 0.5, position = "identity") +
    scale_fill_manual(values = c("darkorange","darkorchid","cyan4"))
}


