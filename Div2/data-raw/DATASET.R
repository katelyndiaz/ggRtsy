## code to prepare `DATASET` dataset goes here
library(tidyverse)
goghColors <- readr::read.csv(https://www.kaggle.com/datasets/pointblanc/colors-of-van-gogh?select=color_space.csv)

usethis::use_data(goghColors, overwrite = TRUE)
