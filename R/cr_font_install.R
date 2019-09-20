#' Import and register Adobe Caslon Pro & Lato font
#'
#' \code{cr_font_install} tests to see if default fonts imported and registered. If Adobe Caslon Pro & Lato are not imported and registered, then \code{cr_font_install} imports and registers Adobe Caslon Pro & Lato with \href{https://github.com/wch/extrafont}{library(extrafont)}.
#'
#' Note: Adobe Caslon Pro and Lato must be installed on your computer for \code{cr_font_install} to work.
#'
#' Test to see if Adobe Caslon Pro and Lato are imported and registered with \code{cr_font_test()}.
#'
#' @md
#' @export
cr_font_install <- function() {
  if (sum(grepl("[Aa]dobe [Cc]aslon [Pp]ro*", extrafont::fonts())) > 0 &&
      sum(grepl("[Ll]ato*", extrafont::fonts())) > 0) {
    "Available fonts (Adobe Caslon Pro and Lato) already imported and registered."
  } else {
    # sysfonts::font_add("Adobe Caslon Pro", regular = "Adobe Caslon Pro Regular.ttf")
    # sysfonts::font_add("Lato", regular = "Lato Regular.ttf")
    # sysfonts::font_add("Lato", regular = "Lato.ttf")
    extrafont::font_import()
    extrafont::loadfonts()
    cr_font_test()
  }
}
