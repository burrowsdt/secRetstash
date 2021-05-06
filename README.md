
<!-- README.md is generated from README.Rmd. Please edit that file -->

# secRetstash

<!-- badges: start -->
<!-- badges: end -->

`secRetstash` is a package that holds functions I use to make my R life
easier. It is mainly intended for personal use and R experimentation,
you are welcome to poke around and install if you find anything useful!
Each function’s documentation can be reviewed using `?functionName` and
additional examples are below.

## Installation

You can install the package from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("burrowsdt/secRetstash")
```

## Brief Examples

Each function is presented here, sorted alphabetically, with a brief
example of its purpose.

### `removeExcept`

`removeExcept` empties your global environment of all objects except
those specified by the user. Pass the object name as a string.

``` r
library(secRetstash)
objectA <- c("a", "b", "c")
objectB <- c("d", "e", "f")

removeExcept("objectA")

ls()
#> [1] "objectA" "objectB"
```

Pass more than one object name as a string to retain multiple objects.

``` r
objectA <- c("a", "b", "c")
objectB <- c("d", "e", "f")
objectC <- c("g", "h", "i")
objectD <- c("j", "k", "l")

removeExcept(c("objectA", "objectB"))

ls()
#> [1] "objectA" "objectB" "objectC" "objectD"
```
