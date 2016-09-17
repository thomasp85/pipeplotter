#' @importFrom lazyeval lazy_dots
#' @export
set_scales <- function(., ...) {
    scales <- lazy_dots(...)
    if (is.null(names(scales))) {
        stop("scales must be named", call. = FALSE)
    }
    for (scale in names(scales)) {
        scale_type <- as.character(scales[[scale]]$expr)[1]
        scale_name <- paste0("scale_", scale, '_', scale_type)
        temp_envir <- structure(list(get(scale_name)), names = scale_type)
        . <- . + eval(scales[[scale]]$expr, envir = temp_envir, enclos = scales[[scale]]$env)
    }
    .
}
