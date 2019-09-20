#' Custom [ggplot2] theme for personal use by Connor Rothschild
#'
#' \code{view_palette} displays the colors and hexadecimal codes for \code{palette_cr_*} vectors.
#' These palettes were generated on www.coolors.co/.
#'
#' @param palette A \code{palette_cr_*} vector from \code{library(cr)}.
#'   Options are `palette_cr_main`, `palette_cr_diverging`, `palette_cr_politics`, and `palette_cr_sequential`
#'
#' @examples
#' view_palette()
#' view_palette(palette_cr_main)
#'
#' @md
#'
#' @export
view_palette <- function(palette = palette_cr_main) {

  color_palette <- unname(rev(palette))

  data <- tibble::tibble(x = 1,
                         y = 1:length(color_palette),
                         colors = factor(color_palette, levels = color_palette))

  ggplot2::ggplot(data = data) +
    ggplot2::geom_point(ggplot2::aes_string("x", "y", color = "colors"), size = 15) +
    ggplot2::geom_text(ggplot2::aes_string(2, "y"), label = color_palette) +
    ggplot2::scale_color_manual(values = color_palette) +
    ggplot2::scale_x_continuous(limits = c(0, 3)) +
    tpltheme::theme_tpl_texas() +
    ggplot2::guides(color = FALSE)

}
