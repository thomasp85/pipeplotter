#' @export
add_layer <- function(., geom = NULL, stat = NULL, data = NULL, mapping = NULL,
                      position = NULL, inherit.aes = TRUE, subset = NULL,
                      show.legend = NA, ...) {
    . + layer(geom = geom, stat = stat, data = data, mapping = mapping,
              position = position, params = list(...),
              inherit.aes = inherit.aes, subset = subset,
              show.legend = show.legend)
}
#' @export
add_abline <- function(., ...) {
    . + geom_abline(...)
}
#' @export
add_bar <- function(., ...) {
    . + geom_bar(...)
}
#' @export
add_bin2d <- function(., ...) {
    . + geom_bin2d(...)
}
#' @export
add_blank <- function(., ...) {
    . + geom_blank(...)
}
#' @export
add_boxplot <- function(., ...) {
    . + geom_boxplot(...)
}
#' @export
add_col <- function(., ...) {
    . + geom_col(...)
}
#' @export
add_contour <- function(., ...) {
    . + geom_contour(...)
}
#' @export
add_count <- function(., ...) {
    . + geom_count(...)
}
#' @export
add_crossbar <- function(., ...) {
    . + geom_crossbar(...)
}
#' @export
add_curve <- function(., ...) {
    . + geom_curve(...)
}
#' @export
add_defaults <- function(., ...) {
    . + geom_defaults(...)
}
#' @export
add_density <- function(., ...) {
    . + geom_density(...)
}
#' @export
add_density2d <- function(., ...) {
    . + geom_density2d(...)
}
#' @export
add_dotplot <- function(., ...) {
    . + geom_dotplot(...)
}
#' @export
add_errorbar <- function(., ...) {
    . + geom_errorbar(...)
}
#' @export
add_errorbarh <- function(., ...) {
    . + geom_errorbarh(...)
}
#' @export
add_freqplot <- function(., ...) {
    . + geom_freqplot(...)
}
#' @export
add_hex <- function(., ...) {
    . + geom_hex(...)
}
#' @export
add_histogram <- function(., ...) {
    . + geom_histogram(...)
}
#' @export
add_hline <- function(., ...) {
    . + geom_hline(...)
}
#' @export
add_jitter <- function(., ...) {
    . + geom_jitter(...)
}
#' @export
add_label <- function(., ...) {
    . + geom_label(...)
}
#' @export
add_linerange <- function(., ...) {
    . + geom_linerange(...)
}
#' @export
add_map <- function(., ...) {
    . + geom_map(...)
}
#' @export
add_path <- function(., ...) {
    . + geom_path(...)
}
#' @export
add_point <- function(., ...) {
    . + geom_point(...)
}
#' @export
add_pointrange <- function(., ...) {
    . + geom_pointrange(...)
}
#' @export
add_polygon <- function(., ...) {
    . + geom_polygon(...)
}
#' @export
add_quantile <- function(., ...) {
    . + geom_quantile(...)
}
#' @export
add_raster <- function(., ...) {
    . + geom_raster(...)
}
#' @export
add_rect <- function(., ...) {
    . + geom_rect(...)
}
#' @export
add_ribbon <- function(., ...) {
    . + geom_ribbon(...)
}
#' @export
add_rug <- function(., ...) {
    . + geom_rug(...)
}
#' @export
add_segment <- function(., ...) {
    . + geom_segment(...)
}
#' @export
add_smooth <- function(., ...) {
    . + geom_smooth(...)
}
#' @export
add_spoke <- function(., ...) {
    . + geom_spoke(...)
}
#' @export
add_text <- function(., ...) {
    . + geom_text(...)
}
#' @export
add_tile <- function(., ...) {
    . + geom_tile(...)
}
#' @export
add_violin <- function(., ...) {
    . + geom_violin(...)
}
#' @export
add_vline <- function(., ...) {
    . + geom_vline(...)
}
