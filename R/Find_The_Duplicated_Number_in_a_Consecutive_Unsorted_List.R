find_dup <- function(arr) {
  sum(ifelse(duplicated(arr) == TRUE, arr, 0))
}