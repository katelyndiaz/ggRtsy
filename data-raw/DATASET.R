## code to prepare `DATASET` dataset goes here
library(tidyverse)
goghColors <- readr::read_csv("data-raw/color_space.csv")

usethis::use_data(goghColors, overwrite = TRUE)
