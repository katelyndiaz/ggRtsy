# library(tidyverse)
# library(testthat)
#library(dplyr)
library(ggplot2)
plotOne <- ggplot(starwars, aes(x = mass, y = height)) +
  geom_point() +
  scale_x_continuous()

test_that("Rectange Filler works", {
  expect_equal(RectangleFiller(plotOne, c("red", "blue", "green", "orange", "purple")))
})
#str.object
