#' Custom [ggplot2] theme for personal use by Connor Rothschild
#'
#' Drops tick axes and axes labels
#'
#' @examples
#' plot + fix_bars(type = "continuous", axis = "y")
#'
#' @param axis Axis the data belong to. Options include "x" or "y"
#' @param type Data type. Options include "continuous" or "discrete"
#' @param ... Remaining arguments
#'
#' @md
#' @export
fix_bars <- function(type = "continuous", axis = "y", ...) {

  if (axis == "y" && type == "continuous") {
    ggplot2::scale_y_continuous(expand = ggplot2::expansion(mult = c(0,0.001)), ...)
  } else if (axis == "y" && type == "discrete") {
    ggplot2::scale_y_discrete(expand = ggplot2::expansion(mult = c(0,0.001)), ...)
  } else if (axis == "x" && type == "continuous") {
    ggplot2::scale_x_continuous(expand = ggplot2::expansion(mult = c(0,0.001)), ...)
  } else if (axis == "x" && type == "discrete") {
    ggplot2::scale_x_discrete(expand = ggplot2::expansion(mult = c(0,0.001)), ...)
  }

}
