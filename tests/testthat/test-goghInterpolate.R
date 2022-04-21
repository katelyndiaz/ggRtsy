# library(dplyr)
# library(ggplot2)
# library(purrr)
# library(grDevices)
#
# plotOne <- ggplot(starwars, aes(x = mass, y = height)) +
#   geom_point() +
#   scale_x_continuous()
#
# test_that("gogh_interpolate works", {
#  # x <- gogh_interpolate(gogh_palettes_pop$starryNight)
#   x <- gogh_interpolate(gogh_palettes_pop[starryNight])
#   expect_s3_class(x, "character")
# })
