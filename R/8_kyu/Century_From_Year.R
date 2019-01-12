century <- function(year) {
  if (year <= 100) {
    return(1)
  }
  else {
    if (year %% 100 == 0) {
      return(year / 100)
    }
    else {
      return(floor(year / 100) + 1)
    }
  }
}