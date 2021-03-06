#' Custom [ggplot2] theme for personal use by Connor Rothschild
#'
#' \code{set_cr_theme} provides a [ggplot2] theme formatted for use by Connor Rothschild
#'
#' @param font The font for plot labels, axes, and titles.
#' @import extrafont
#' @import ggrepel
#' @import yaml
#'
#' @md
#' @export
set_cr_theme <- function(font = "Lato") {

  # set default theme
    ggplot2::theme_set(theme_cr(base_family = font))

  # add font
    ggplot2::theme_update(text = ggplot2::element_text(family = font))
    ggplot2::update_geom_defaults("text", list(family = font))
    ggplot2::update_geom_defaults("label", list(family = font))

# select color palette

# set color scales for continuous

    options(
      ggplot2.continuous.colour = "gradient",
      ggplot2.continuous.fill = "gradient"
        )

# set colors for single bars, etc.

    config <- yaml::read_yaml("https://raw.githubusercontent.com/connorrothschild/cr/master/config.yaml")

    ggplot2::update_geom_defaults("bar", list(fill = config$palettes$cr_main$primary))
    ggplot2::update_geom_defaults("col", list(fill = config$palettes$cr_main$primary))
    ggplot2::update_geom_defaults("point", list(colour = config$palettes$cr_main$primary))
    ggplot2::update_geom_defaults("line", list(colour = config$palettes$cr_main$primary))
    ggplot2::update_geom_defaults("step", list(colour = config$palettes$cr_main$primary))
    ggplot2::update_geom_defaults("path", list(colour = config$palettes$cr_main$primary))
    ggplot2::update_geom_defaults("boxplot", list(fill = config$palettes$cr_main$primary))
    ggplot2::update_geom_defaults("density", list(fill = config$palettes$cr_main$primary))
    ggplot2::update_geom_defaults("violin", list(fill = config$palettes$cr_main$primary))

# set colors for stats

    ggplot2::update_stat_defaults("count", list(fill = config$palettes$cr_main$primary))
    ggplot2::update_stat_defaults("boxplot", list(fill = config$palettes$cr_main$primary))
    ggplot2::update_stat_defaults("density", list(fill = config$palettes$cr_main$primary))
    ggplot2::update_stat_defaults("ydensity", list(fill = config$palettes$cr_main$primary))

}
