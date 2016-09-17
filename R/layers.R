forward <- function(f) {
  fmls <- formals(f)
  called_fmls <- stats::setNames(lapply(names(fmls), as.symbol), names(fmls))
  call <- as.call(c(substitute(f), called_fmls))

  formals(f) <- append(fmls, alist(. = ), after = 0)
  body(f) <- bquote(. + .(call),
    as.environment(list(call = call)))
  f
}

#' @export
add_layer <- forward(layer)

#' @export
add_abline <- forward(geom_abline)

#' @export
add_bar <- forward(geom_bar)

#' @export
add_bin2d <- forward(geom_bin2d)

#' @export
add_blank <- forward(geom_blank)

#' @export
add_boxplot <- forward(geom_boxplot)

#' @export
add_col <- forward(geom_col)

#' @export
add_contour <- forward(geom_contour)

#' @export
add_count <- forward(geom_count)

#' @export
add_crossbar <- forward(geom_crossbar)

#' @export
add_curve <- forward(geom_curve)

#' @export
add_defaults <- forward(update_geom_defaults)

#' @export
add_density <- forward(geom_density)

#' @export
add_density2d <- forward(geom_density2d)

#' @export
add_dotplot <- forward(geom_dotplot)

#' @export
add_errorbar <- forward(geom_errorbar)

#' @export
add_errorbarh <- forward(geom_errorbarh)

#' @export
add_freqpoly <- forward(geom_freqpoly)

#' @export
add_hex <- forward(geom_hex)

#' @export
add_histogram <- forward(geom_histogram)

#' @export
add_hline <- forward(geom_hline)

#' @export
add_jitter <- forward(geom_jitter)

#' @export
add_label <- forward(geom_label)

#' @export
add_linerange <- forward(geom_linerange)

#' @export
add_map <- forward(geom_map)

#' @export
add_path <- forward(geom_path)

#' @export
add_point <- forward(geom_point)

#' @export
add_pointrange <- forward(geom_pointrange)

#' @export
add_polygon <- forward(geom_polygon)

#' @export
add_quantile <- forward(geom_quantile)

#' @export
add_raster <- forward(geom_raster)

#' @export
add_rect <- forward(geom_rect)

#' @export
add_ribbon <- forward(geom_ribbon)

#' @export
add_rug <- forward(geom_rug)

#' @export
add_segment <- forward(geom_segment)

#' @export
add_smooth <- forward(geom_smooth)

#' @export
add_spoke <- forward(geom_spoke)

#' @export
add_text <- forward(geom_text)

#' @export
add_tile <- forward(geom_tile)

#' @export
add_violin <- forward(geom_violin)

#' @export
add_vline <- forward(geom_vline)
