test_that("RGBToHex function works", {
  expect_equal(rgbToHex("(0, 72, 186)"), "#0048ba")
  expect_equal(rgbToHex(c("(119, 168, 99)", "(211,77,226)")), c("#77a863", "#d34de2"))
})
