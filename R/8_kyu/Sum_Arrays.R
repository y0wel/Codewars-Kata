sum_array <- function(a) {
  if (is.null(a) == TRUE) {
    return(0)
  }
  else {
    sum <- 0 
    for(i in 1:length(a)) {
      sum <- sum + a[i]
    }
    return(sum)
  }
}