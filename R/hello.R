# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello, world!")
}


RectangleFiller <- function(plot1,
                             hex_codes = c("red", "blue", "green", "orange", "purple")) {


  data <- plot1$data[unlist(plot1$labels)] %>%
    map_dfr(range, na.rm = TRUE)
  x_min <- data[[1, 1]]
  x_max <- data[[2, 1]]
  width <- (x_max - x_min) / length(hex_codes)

  coords <- tibble(
    x_center = seq(from = x_min + width / 2, to = x_max, by = width),
    y_center = mean(data[[2]]),
    rect_height = Inf,
    fill = letters[1:length(hex_codes)]
  )
  names(coords)[1:2] <- unlist(plot1$labels[1:2])

  plot1 +
    geom_tile(data = coords, aes(height = rect_height, fill = fill), alpha = .2) +
    scale_fill_manual(values = hex_codes, guide = FALSE)
}


