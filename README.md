
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggRtsy

<!-- badges: start -->
<!-- badges: end -->

### Overview

At this point in its development, the `ggArtsyR()` package works with
`ggplot2()` to add an additional color palette to the user’s repertoire.
This is the goghColors dataset, which contains the RGB codes of colors
picked from Van Gogh paintings. It also has a function that work
alongside `ggplot2()` to create more interesting data visualizations and
add contextual information to the user’s plots. This main function is
`RectangleFiller()`, which divides data visualizations into a specified
number of colored quadrants based on the number of input colors,
improving the readability of graphs.

### Usage example

Using Hex Codes from the dataset `goghColors`, three colors were added
on top of a `ggplot` sample scatter plot. Based on the plot, the
function automatically calculated three equal widths of the rectangles,
and stretched them to upper and lower bounds on the y-axis.

``` r
RectangleFiller(plotExample, c("#e32636", "#9966cc", "#f4c2c2"))
```

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

``` r
#library(tayloRswift)
plotExample <- ggplot(starwars, aes(x = height, y = mass)) +
  geom_point(size = 4) +
  #scale_color_taylor(palette = "starryNight")+
  theme_minimal()
```

### Installation instructions

Get the development version from GitHub:

``` r
#Install remotes if needed:
#install.packages("remotes")
remotes::install_github("katelyndiaz/ggRtsy")
```

And load it with

``` r
library(ggRtsy)
```
