
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggArtsyR

<!-- badges: start -->
<!-- badges: end -->

### Overview

At this point in its development, the ggArtsyR package works with
`ggplot2()` to add an additional color palette to the user’s repertoire.
This is the goghColors dataset, which contains the RGB codes of colors
picked from Van Gogh paintings. It also has a function that work
alongside `ggplot2()` to create more interesting data visualizations and
add contextual information to the user’s plots. This main function is
`RectangleFiller()`, which divides data visualizations into colored
quadrants, improving the readability of graphs.

### Usage example

! Write description of example here

``` r
RectangleFiller(plotExample, c("#e32636", "#9966cc", "#f4c2c2"))
#> Warning: Removed 28 rows containing missing values (geom_point).
#> Warning: It is deprecated to specify `guide = FALSE` to remove a guide. Please
#> use `guide = "none"` instead.
```

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

### Installation instructions

Get the development version from GitHub:

``` r
# Install remotes if needed:
# install.packages("remotes")
# next line commented out because it does not work and halts knitting
# remotes::install_github("katelyndiaz/SDS270_Div2")
```
