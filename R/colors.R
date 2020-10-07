#' List of CR colors
#'
#' @format A \code{list}
#' @rdname CR_palettes
#' @export
cr_color_list <- c(
  `seqblue1` = "#f7fbff",
  `seqblue2` = "#deebf7",
  `seqblue3` = "#c6dbef",
  `seqblue4` = "#9ecae1",
  `seqblue5` = "#6baed6",
  `seqblue6` = "#4292c6",
  `seqblue7` = "#2171b5",
  `seqblue8` = "#08519c",
  `seqblue9` = "#08306b",
  `divred2`  = "#b2182b",
  `divred3`  = "#d6604d",
  `divred4`  = "#f4a582",
  `divred5`  = "#fddbc7",
  `divneutr` = "#dedede",
  `divblue5` = "#d1e5f0",
  `divblue4` = "#92c5de",
  `divblue3` = "#4393c3",
  `divblue2` = "#2166ac",
  # `primary`  = "#23374d",
  # `black`    = "#240115",
  # `red`      = "#DE3C4B",
  # `blue`     = "#1089ff",
  # `mauve`    = "#C3979F",
  # `emphasis` = "#FFA400"
  `primary`  = "#012956",
  `black`    = "#5c1a58",
  `red`      = "#DE3C4B",
  `blue`     = "#1089ff",
  `mauve`    = "#C3979F",
  `emphasis` = "#FFA400"
)

#' Function to extract `cr_color_list` colors as hex codes
#'
#' @param ... Character names of CR_color_list colors
#' @export
cr_colors <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return(cr_color_list)

  cr_color_list[cols]
}

#' List of CR Palettes
#'
#' @format A \code{list}
#' @rdname CR_palettes
#' @export
cr_palettes <-
  list(
    `diverging`   = cr_colors("divred2", "divred3", "divred4", "divred5", "divneutr", "divblue5", "divblue4", "divblue3", "divblue2"),
    `sequential`  = cr_colors("seqblue1", "seqblue2", "seqblue3", "seqblue4", "seqblue5", "seqblue6", "seqblue7", "seqblue8", "seqblue9"),
    `categorical` = cr_colors("primary", "black", "red", "blue", "mauve",  "emphasis")
  )

#' Connor Rothschild custom color palettes
#'
#'@family CR palettes
#'@rdname CR_palettes
#'@export
palette_cr_main <- cr_palettes$categorical

#'@rdname CR_palettes
#'@export
palette_cr_diverging <- cr_palettes$diverging

#'@rdname CR_palettes
#'@export
palette_cr_sequential <- cr_palettes$sequential
