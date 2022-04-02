
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
#> Downloading GitHub repo katelyndiaz/SDS270_Div2@HEAD
#> utf8         (1.1.4   -> 1.2.2 ) [CRAN]
#> crayon       (1.4.2   -> 1.5.1 ) [CRAN]
#> cli          (3.1.1   -> 3.2.0 ) [CRAN]
#> fansi        (0.4.1   -> 1.0.3 ) [CRAN]
#> pillar       (1.4.7   -> 1.7.0 ) [CRAN]
#> R6           (2.5.0   -> 2.5.1 ) [CRAN]
#> generics     (0.1.0   -> 0.1.2 ) [CRAN]
#> cpp11        (0.2.4   -> 0.4.2 ) [CRAN]
#> vctrs        (0.3.6   -> 0.4.0 ) [CRAN]
#> tidyselect   (1.1.0   -> 1.1.2 ) [CRAN]
#> tibble       (3.0.4   -> 3.1.6 ) [CRAN]
#> rlang        (0.4.10  -> 1.0.2 ) [CRAN]
#> magrittr     (2.0.1   -> 2.0.3 ) [CRAN]
#> glue         (1.4.2   -> 1.6.2 ) [CRAN]
#> ellipsis     (0.3.1   -> 0.3.2 ) [CRAN]
#> dplyr        (1.0.2   -> 1.0.8 ) [CRAN]
#> stringi      (1.5.3   -> 1.7.6 ) [CRAN]
#> openssl      (1.4.3   -> 2.0.0 ) [CRAN]
#> mime         (0.9     -> 0.12  ) [CRAN]
#> jsonlite     (1.7.2   -> 1.8.0 ) [CRAN]
#> curl         (4.3     -> 4.3.2 ) [CRAN]
#> xml2         (1.3.2   -> 1.3.3 ) [CRAN]
#> rappdirs     (0.3.1   -> 0.3.3 ) [CRAN]
#> ps           (1.5.0   -> 1.6.0 ) [CRAN]
#> fastmap      (1.0.1   -> 1.1.0 ) [CRAN]
#> digest       (0.6.27  -> 0.6.29) [CRAN]
#> sass         (0.3.1   -> 0.4.1 ) [CRAN]
#> tinytex      (0.36    -> 0.38  ) [CRAN]
#> jquerylib    (0.1.3   -> 0.1.4 ) [CRAN]
#> htmltools    (0.5.1.1 -> 0.5.2 ) [CRAN]
#> bslib        (0.2.4   -> 0.3.1 ) [CRAN]
#> xfun         (0.29    -> 0.30  ) [CRAN]
#> yaml         (2.2.1   -> 2.3.5 ) [CRAN]
#> highr        (0.8     -> 0.9   ) [CRAN]
#> evaluate     (0.14    -> 0.15  ) [CRAN]
#> processx     (3.5.2   -> 3.5.3 ) [CRAN]
#> withr        (2.4.3   -> 2.5.0 ) [CRAN]
#> rmarkdown    (2.6     -> 2.13  ) [CRAN]
#> knitr        (1.30    -> 1.38  ) [CRAN]
#> fs           (1.5.0   -> 1.5.2 ) [CRAN]
#> clipr        (0.7.1   -> 0.8.0 ) [CRAN]
#> hms          (0.5.3   -> 1.1.1 ) [CRAN]
#> tzdb         (NA      -> 0.3.0 ) [CRAN]
#> vroom        (1.3.2   -> 1.5.7 ) [CRAN]
#> colorspace   (2.0-0   -> 2.0-3 ) [CRAN]
#> viridisLite  (0.3.0   -> 0.4.0 ) [CRAN]
#> farver       (2.0.3   -> 2.1.0 ) [CRAN]
#> isoband      (0.2.3   -> 0.2.5 ) [CRAN]
#> backports    (1.2.1   -> 1.4.1 ) [CRAN]
#> tidyr        (1.1.2   -> 1.2.0 ) [CRAN]
#> readr        (1.4.0   -> 2.1.2 ) [CRAN]
#> forcats      (0.5.0   -> 0.5.1 ) [CRAN]
#> uuid         (NA      -> 1.0-4 ) [CRAN]
#> ids          (NA      -> 1.0.1 ) [CRAN]
#> googledrive  (NA      -> 2.0.0 ) [CRAN]
#> gargle       (NA      -> 1.2.0 ) [CRAN]
#> data.table   (1.13.6  -> 1.14.2) [CRAN]
#> DBI          (1.1.0   -> 1.1.2 ) [CRAN]
#> blob         (1.2.1   -> 1.2.2 ) [CRAN]
#> rvest        (0.3.6   -> 1.0.2 ) [CRAN]
#> reprex       (0.3.0   -> 2.0.1 ) [CRAN]
#> readxl       (1.3.1   -> 1.4.0 ) [CRAN]
#> lubridate    (1.7.9.2 -> 1.8.0 ) [CRAN]
#> haven        (2.3.1   -> 2.4.3 ) [CRAN]
#> googleshe... (NA      -> 1.0.0 ) [CRAN]
#> dtplyr       (NA      -> 1.2.1 ) [CRAN]
#> dbplyr       (2.0.0   -> 2.1.1 ) [CRAN]
#> tidyverse    (1.3.0   -> 1.3.1 ) [CRAN]
#> Installing 68 packages: utf8, crayon, cli, fansi, pillar, R6, generics, cpp11, vctrs, tidyselect, tibble, rlang, magrittr, glue, ellipsis, dplyr, stringi, openssl, mime, jsonlite, curl, xml2, rappdirs, ps, fastmap, digest, sass, tinytex, jquerylib, htmltools, bslib, xfun, yaml, highr, evaluate, processx, withr, rmarkdown, knitr, fs, clipr, hms, tzdb, vroom, colorspace, viridisLite, farver, isoband, backports, tidyr, readr, forcats, uuid, ids, googledrive, gargle, data.table, DBI, blob, rvest, reprex, readxl, lubridate, haven, googlesheets4, dtplyr, dbplyr, tidyverse
#> Installing packages into '/Users/katelyndiaz/Library/R/4.0/library'
#> (as 'lib' is unspecified)
#> 
#> The downloaded binary packages are in
#>  /var/folders/x8/rk00wr614wq98fpzr4fqn7n80000gn/T//RtmpSQo5CW/downloaded_packages
#>      checking for file ‘/private/var/folders/x8/rk00wr614wq98fpzr4fqn7n80000gn/T/RtmpSQo5CW/remotes1f691a93e74/katelyndiaz-SDS270_Div2-6bf02a5/DESCRIPTION’ ...  ✓  checking for file ‘/private/var/folders/x8/rk00wr614wq98fpzr4fqn7n80000gn/T/RtmpSQo5CW/remotes1f691a93e74/katelyndiaz-SDS270_Div2-6bf02a5/DESCRIPTION’
#>   ─  preparing ‘ggArtsyR’:
#>      checking DESCRIPTION meta-information ...  ✓  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#> ─  building ‘ggArtsyR_0.1.0.tar.gz’
#>      
#> 
#> Installing package into '/Users/katelyndiaz/Library/R/4.0/library'
#> (as 'lib' is unspecified)
```
