newAvg <- function(arr, newavg) {
  result <- ceiling((length(arr) + 1) * newavg - sum(arr))
  if (result <= 0) {
    stop("ValueError")
  } else {
    return(result)
  }
}