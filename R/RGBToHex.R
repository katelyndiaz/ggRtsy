#' Converts RGB colors to Hex code colors
#' @details Taking input of a vector of RGB values in the format
#' "(0, 72, 186)", etc, and returns the corresponding
#' hex value in the format "#0048ba"
#'
#' @param rgbVec a vector of strings in the format "(0, 72, 186)"
#'
#' @return vector of hex code strings in the format "#0048ba"
#'
#' @export
#'
#' @importFrom magrittr %>%

rgbToHex <- function(rgbVec) {

  hexdigit<-c(0:9,letters[1:6])
  rgbMapFunc <- function(rgb) {
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

  return(purrr::map_chr(rgbVec, rgbMapFunc))

}

