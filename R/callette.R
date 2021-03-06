#' Callette
#'
#' Color palettes by Calle: "callettes"
#'
#' (code based on https://github.com/jrcalabrese/joycon)
#'
#' Options: \code{rainbow}, \code{friendly},
#' \code{red}, \code{orange}, \code{green},
#' \code{blue}, \code{indigo}, \code{violet}
#'
#' @export
callettes <- list(
  rainbow = c("#D03030", "#FFAA00", "#40A966", "#467fea", "#A873e2", "#B970C3"),
  rainbow2 = c("#FEB0B0", "#FFFF55", "#D0F099", "#AFDBF5","#DBCDEF","#FFCAE9"),
  rainbow3 = c("#700000", "#CC5500", "#004400", "#011F5B", "#501377", "#603A83"),
  friendly = c("#202020", "#FFCC33", "#104E8B", "#90BB90", "#A52A2A", "#E0E0E0", "#CCAAEE"),
  red = c("#FEB0B0", "#F08080", "#D03030", "#A01010", "#700000"),
  orange = c("#FFFF55", "#FFE033", "#FFAA00", "#FF8800", "#CC5500"),
  green = c("#D0F099", "#A0DD99", "#40A966", "#006622", "#004400"),
  blue = c("#AFDBF5", "#6CB4EE", "#467fea", "#324CB8", "#011F5B"),
  indigo = c("#DBCDEF", "#D1ADFF", "#A873e2", "#6222c0", "#501377"),
  violet = c("#FFCAE9",  "#E1B2DD", "#B970C3", "#863bb6", "#603A83"))
#'
#'#' Callettes
#'
#' Color palettes by Calle: "callettes"
#'
#'@param name Name of palette, options: \code{rainbow}, \code{friendly},
#' \code{red}, \code{orange}, \code{green},
#' \code{blue}, \code{indigo}, \code{violet}
#'
#'@param n Number of colors needed
#'
#'@param type Continuous or discrete
#'
#'@param expand Expand palette length (default is `FALSE`)
#'
#' @export
callette <- function(name, n, type = c("discrete", "continuous"), expand = FALSE) {
  type <- match.arg(type)
  pal <- callettes[[name]]

  if (is.null(pal))
    stop("Error! Try typing the palette name again.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (n > length(pal)) {
    if (expand) {
      pal <- callette::expand_palette(pal)
    }
    if (n > length(pal)) {
      stop("Error! Try a palette containing more colors.")
    }
  }
  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}
