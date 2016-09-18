#' @importFrom lazyeval lazy_dots
#' @export
set_scales <- function(., ...) {
    scales <- lazy_dots(...)
    scale_names <- names(scales)
    
    if (is.null(scale_names) || any(scale_names == "")) {
        stop("scales must be named", call. = FALSE)
    }
    for (scale in scale_names) {
        scale_type <- as.character(scales[[scale]]$expr)[1]
        scale_name <- paste0("scale_", scale, '_', scale_type)
        scale_fun <- tryCatch(get(scale_name), error = function(e) {
            stop(scale_name, ' is not available. Have you loaded the necessary package?', call. = FALSE)
        })
        temp_envir <- structure(list(get(scale_name)), names = scale_type)
        . <- . + eval(scales[[scale]]$expr, envir = temp_envir, enclos = scales[[scale]]$env)
    }
    .
}
