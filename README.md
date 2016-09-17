# pipeplotter

It is my firm belief that the '+' operator is the semantically best way of 
adding plot elements together in ggplot2. Still, the ubiquity of the pipe is
hard to ignore in this day and age. As it makes no sense to pipe a plot through 
a layer, geom, or stat, pipeplotter has been created to offer a thin wrapper 
around the ggplot2 API, providing verb-like synonyms for the different ggplot2
component and offer support for the use of %>%.

## Example
All geoms can be accessed through their `add_*()` synonym. A catchall function
named `add_layer()` is also available:

```r
ggplot(mtcars) %>% add_point(aes(mpg, cyl))
```
![add_point result](https://dl.dropboxusercontent.com/u/2323585/pipeplotter/example_add_point.png)

All `stat_*` functions are purposefully ignored in pipeplotter. A layer is 
defined by a geom and the stat can be set from there.

Scales can be set using the `set_scales()` function:

```r
ggplot(mtcars) %>% 
    add_point(aes(mpg, cyl, colour = gear)) %>% 
    set_scales(y = reverse(), colour = distiller())
```

![set_scales result](https://dl.dropboxusercontent.com/u/2323585/pipeplotter/example_set_scales.png)

Arguments to the `set_scales` functions resolve directly to a scale constructor
by merging the argument name ("y" and "colour" in the example above) with the 
name of the function used for the argument. The example above is equivalent to
adding `scale_y_reverse()` and `scale_colour_distiller()` to the plot with the
standard ggplot2 syntax.

Support for the full ggplot2 API will come eventually as I figure out the right
verbs - suggestion are welcome as issues...
