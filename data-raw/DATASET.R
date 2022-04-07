## code to prepare `DATASET` dataset goes here
library(tidyverse)
hexdigit<-c(0:9,letters[1:6])
toRGB <- function(rgb) {
  return(paste("#", hexdigit[as.numeric(stringr::str_split(stringr::str_remove_all(
    rgb,"[( )]"), "\\,")[[1]])%/%16+1][1],
    hexdigit[as.numeric(stringr::str_split(stringr::str_remove_all(
      rgb,"[( )]"), "\\,")[[1]])%%16+1][1],
    hexdigit[as.numeric(stringr::str_split(stringr::str_remove_all(
      rgb,"[( )]"), "\\,")[[1]])%/%16+1][2],
    hexdigit[as.numeric(stringr::str_split(stringr::str_remove_all(
      rgb,"[( )]"), "\\,")[[1]])%%16+1][2],
    hexdigit[as.numeric(stringr::str_split(stringr::str_remove_all(
      rgb,"[( )]"), "\\,")[[1]])%/%16+1][3],
    hexdigit[as.numeric(stringr::str_split(stringr::str_remove_all(
      rgb,"[( )]"), "\\,")[[1]])%%16+1][3], sep = ""))
}
goghColors <- readr::read_csv("data-raw/color_space.csv") %>%
  janitor::clean_names() %>%
  mutate(hex = map(rgb, toRGB))

usethis::use_data(goghColors, overwrite = TRUE)

## code to prepare `goghPaintingSets` dataset goes here

goghPaintingSets <- readr::read_csv("data-raw/df.csv") %>%
  janitor::clean_names() %>%
  mutate(style = as.factor(style),
         genre = as.factor(genre))
usethis::use_data(goghPaintingSets, overwrite = TRUE)

