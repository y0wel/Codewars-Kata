get_sum <- function(a, b) {
  if (a == b) {
    result <- a
  }
  else {
    result <- sum(a:b, na.rm = TRUE)
  }
  return(result)
}