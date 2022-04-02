
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggArtsyR

<!-- badges: start -->
<!-- badges: end -->

### Overview

At this point in its development, the `ggArtsyR()` package works with
`ggplot2()` to add an additional color palette to the user’s repertoire.
This is the goghColors dataset, which contains the RGB codes of colors
picked from Van Gogh paintings. It also has a function that work
alongside `ggplot2()` to create more interesting data visualizations and
add contextual information to the user’s plots. This main function is
`RectangleFiller()`, which divides data visualizations into colored
quadrants, improving the readability of graphs.

### Usage example

Using Hex Codes from the dataset `goghColors`, three colors were added
on top of a `ggplot` sample scatter plot. Based on the plot, the
function automatically calculated three equal widths of the rectangles,
and stretched them to upper and lower bounds on the y-axis.

``` r
RectangleFiller(plotExample, c("#e32636", "#9966cc", "#f4c2c2"))
```

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

### Installation instructions

Get the development version from GitHub:

``` r
#Install remotes if needed:
#install.packages("remotes")
remotes::install_github("katelyndiaz/SDS270_Div2")
#> 
#>      checking for file ‘/private/var/folders/x8/rk00wr614wq98fpzr4fqn7n80000gn/T/Rtmp75CZlH/remotes20792e370edf/katelyndiaz-SDS270_Div2-ceb7f66/DESCRIPTION’ ...  ✓  checking for file ‘/private/var/folders/x8/rk00wr614wq98fpzr4fqn7n80000gn/T/Rtmp75CZlH/remotes20792e370edf/katelyndiaz-SDS270_Div2-ceb7f66/DESCRIPTION’
#>   ─  preparing ‘ggArtsyR’:
#>      checking DESCRIPTION meta-information ...  ✓  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘ggArtsyR_0.1.0.tar.gz’
#>      
#> 
```
