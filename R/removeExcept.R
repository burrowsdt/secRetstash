#' Remove all items objects from global environment except those specified by user.
#'
#' @param x character
#'
#' @return
#' @export
#'
#' @examples
#' firstObject <- c(a, b, c)
#' secondObject <- c(x, y, z)
#' removeExcept("secondObject")
removeExcept <- function(x){
  rm(list=setdiff(ls(pos = .GlobalEnv), x), pos = .GlobalEnv)
}
