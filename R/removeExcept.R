#' Remove all items objects from global environment except those specified by user
#'
#' Remove all items objects from global environment except those specified by user. Code adapted from [this Stack Overflow thread](https://stackoverflow.com/questions/6190051/how-can-i-remove-all-objects-but-one-from-the-workspace-in-r)
#'
#' @param x character
#'
#' @return
#' @export
#'
#' @examples
#' firstObject <- c("a", "b", "c")
#' secondObject <- c("d", "e", "f")
#' removeExcept("secondObject")
#' ls()
removeExcept <- function(x){
  rm(list=setdiff(ls(pos = .GlobalEnv), x), pos = .GlobalEnv)
}
