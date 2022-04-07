#' Sampling of Colors from Van Gogh Paintings
#'
#' This dataset consists of information on 986 colors across Van Gogh paintings.
#'
#' @format A data frame of 986 rows representing colors selected from
#' Van Gogh's painting. 5 colors were selected from each painting.
#' Consists of 3 variables.
#'
#' \describe{
#'   \item{name}{Color name}
#'   \item{rgb}{Color RGB value}
#'   \item{hex}{Color hex code value}
#' }
#' @source Kaggle Konstantinos Katserelis <https://www.kaggle.com/datasets/pointblanc/colors-of-van-gogh?select=color_space.csv>
#' Note data is released under CC BY-SA 4.0
"goghColors"


#' Van Gogh Paintings Information
#'
#' This dataset consists of information about and colors from all 1931
#' of Van Gogh's paintings.
#'
#' @format A data frame of 1931 rows representing information from
#' Van Gogh's paintings. Consists of 6 variables.
#'
#' \describe{
#'   \item{name}{Painting name}
#'   \item{colors}{5 colors picked from the painting}
#'   \item{year}{Year painting was painted}
#'   \item{genre}{Genre of painting}
#'   \item{style}{Style of painting}
#'   \item{link}{Link of image of painting}
#' }
#' @source Kaggle Konstantinos Katserelis <https://www.kaggle.com/datasets/pointblanc/colors-of-van-gogh?select=color_space.csv>
#' Note data is released under CC BY-SA 4.0
"goghPaintingSets"
