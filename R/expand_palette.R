#' Expand palette
#'
#' Inputs a color palette (vector) and
#' expands the colors by repeating them
#' in gradually lighter shades
#'
#' @param palette A color palette (vector of hex colors) to be expanded
#'
#' @param amount Amount of brightening of colors in palette (0 to 1)
#'
#' @return An expanded color palette
#'
#' @export
expand_palette <- function(palette, amount=0.2) {
  longer_palette <- c()
  for (color in palette) {
    longer_palette <- c(longer_palette, color, colorspace::lighten(color, amount))
  }
  return(longer_palette)
}
