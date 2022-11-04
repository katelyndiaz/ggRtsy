plotOne <- ggplot(dplyr::starwars, aes(x = mass, y = height)) +
  geom_point() +
  scale_x_continuous()

test_that("Rectangle Filler works", {
  x <- RectangleFiller(plotOne, c("red", "blue", "green", "orange", "purple"))
  expect_s3_class(x, "ggplot")
})

