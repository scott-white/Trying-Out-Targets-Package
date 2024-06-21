# R/functions.R
get_data <- function(file) {
  read_csv(file, col_types = cols()) %>%
    filter(!is.na(Ozone))
}

fit_model <- function(data) {
  lm(Ozone ~ Temp, data) %>%
    coefficients()
}

plot_model <- function(model, data) {
  ggplot(data) +
    geom_point(aes(x = Temp, y = Ozone)) +
    geom_abline(intercept = model[1], slope = model[2]) +
    theme_gray(24)
}

plot_model2 <- function(data) {
  ggplot(data) +
    geom_point(aes(x = Temp, y = Wind)) +
    theme_gray(24)
}

save_tar_visnetwork_output <- function() {
  network_html_object = tar_visnetwork()
  htmlwidgets::saveWidget(network_html_object, "tar_visnetwork.html")
  webshot2::webshot("tar_visnetwork.html", "tar_visnetwork.png",
                    expand = c(0, 100, 0, 0))
}