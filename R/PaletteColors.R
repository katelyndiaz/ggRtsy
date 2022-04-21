#' Different color palettes created from Van Gogh paintings
#' @export
#'

gogh_palettes_pop <- list(
  `starryNight` = c("#23338C", "#30478C", "#5377A6", "#BDBF7E", "#BFA72C"), #https://uploads4.wikiart.org/00142/images/vincent-van-gogh/the-starry-night.jpg!Large.jpg
  `sunflowers` = c('#74A629', '#F2EB80', '#F2E085', '#BF9821', '#A6681C'), #https://uploads7.wikiart.org/images/vincent-van-gogh/still-life-vase-with-fifteen-sunflowers-1888-1.jpg!Large.jpg
  `selfPortrait` =c('#021F59', '#63A5BF', '#8C701C', '#BF9B6F', '#730202') , #https://uploads8.wikiart.org/images/vincent-van-gogh/self-portrait-1889-1.jpg!Large.jpg
  `wheatField` = c('#73A9D9', '#477332', '#D9B13B', '#D98E32', '#A66329'), #https://uploads4.wikiart.org/images/vincent-van-gogh/wheat-field-with-cypresses-at-the-haude-galline-near-eygalieres-1889-2.jpg!Large.jpg
  `cafeTerrace` = c('#2A6BBF', '#3F6CA6', '#F2C84B', '#D99036', '#BF6734'), #https://uploads2.wikiart.org/images/vincent-van-gogh/cafe-terrace-place-du-forum-arles-1888(1).jpg!Large.jpg
  `rhoneStarry` = c('#073359', '#27668C', '#5A98BF', '#60734D', '#A3A658'), #https://uploads0.wikiart.org/00175/images/vincent-van-gogh/starry-night-over-the-rhone.jpg!Large.jpg
  `irises` = c('#415AA6', '#6382BF', '#65A67C', '#8CA653', '#A66D58') , #https://uploads0.wikiart.org/00213/images/vincent-van-gogh/antique-3840759.jpg!Large.jpg
  `almondBlossoms` = c('#236E8C', '#20788C', '#49B3BF', '#41BFBF', '#BDBF75') #https://uploads6.wikiart.org/images/vincent-van-gogh/branches-with-almond-blossom-1890(1).jpg!Large.jpg
)
#' Interpolate the color palette
#' @param palette the ggRtsy painting color palette of choice
#' @param reverse Boolean, will be TRUE if user wants the palette reversed
#' @param ... further arguments passed to [ggRtsy::gogh_interpolate()]
#' @export
gogh_interpolate <- function(palette = ggRtsy::starryNight, reverse = FALSE, ...){
  pal <- gogh_palettes_pop[[palette]]
  if(reverse){
    pal <- rev(pal)
  }
  grDevices::colorRampPalette(pal, ...)
}


#' Creating the color scale for Van Gogh Colors
#' @param palette the ggRtsy painting color palette of choice
#' @param reverse Boolean, will be TRUE if user wants the palette reversed
#' @param discrete Boolean if color aesthetic is discrete
#' @param ... further arguments passed to [ggRtsy::scale_color_gogh()]
#' library(ggplot2)
#' data <- data.frame(c = LETTERS[1:3],x = c(1,5,7),y = c(5,9,13))
#' ggplot(data, aes(x,y,color = c))+geom_point()+scale_color_taylor()
#' @export
scale_color_gogh <- function(palette = "starryNight",
                               discrete = TRUE, reverse=FALSE,...){
  pal <- gogh_interpolate(palette = palette, reverse = reverse)

  if(discrete){
    ggplot2::scale_discreet("color", paste0("gogh_", palette), palette = pal, ...)
  }else{
    ggplot2::scale_color_gradient(colours = pal(256), ...)
  }
  # ggplot2::scale_colour_manual(
  #   ...,
  #   values,
  #   aesthetics = "colour",
  #   breaks = waiver(),
  #   na.value = "#6382BF"
  #)
}
#' Creating the color fill scale for Van Gogh Colors
#' @export
scale_fill_gogh <- function(){

}

