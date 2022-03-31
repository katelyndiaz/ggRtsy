# library(tidyverse)
# library(testthat)
library(dplyr)
library(ggplot2)
plotOne <- ggplot(starwars, aes(x = mass, y = height)) +
  geom_point() +
  scale_x_continuous()

test_that("Rectange Filler works", {
  expect_equal(RectangleFiller(plotOne, "#D4F090", "green", "#90CFF0",
                             num_rect = 3, x_min = -1, x_max = 26), 9)
})
#str.object
