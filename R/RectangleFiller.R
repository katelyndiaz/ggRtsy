#' Adds transparent coloring horizontally across a ggplot
#'
#' Adds up to 5 colors of choice horizontally across a ggplot
#' graph for data emphasis or decoration.
#'
#' @param plot1 a ggplot with a continuous x-axis
#' @param hex_codes series of wanted colors
#'
#' @return ggplot item with colors
#'
#' @export
#'
RectangleFiller <- function(plot1,
                             hex_codes = c("red", "blue", "green", "orange", "purple")) {


  data <- plot1$data[unlist(plot1$labels)] forcats::%>%
    purr::map_dfr(range, na.rm = TRUE)
  x_min <- data[[1, 1]]
  x_max <- data[[2, 1]]
  width <- (x_max - x_min) / length(hex_codes)

  coords <- tibble::tibble(
    x_center = seq(from = x_min + width / 2, to = x_max, by = width),
    y_center = mean(data[[2]]),
    rect_height = Inf,
    fill = letters[1:length(hex_codes)]
  )
  names(coords)[1:2] <- unlist(plot1$labels[1:2])

  plot1 +
    ggplot2::geom_tile(data = coords, ggplot2::aes(height = rect_height, fill = fill), alpha = .2) +
    ggplot2::scale_fill_manual(values = hex_codes, guide = FALSE)
}

