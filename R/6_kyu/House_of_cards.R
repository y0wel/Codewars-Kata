house_of_cards <- function(floors) {
  if (floors <= 0) {
    stop("error")
  }
  else {
    sum(as.numeric(1:(floors + 1) * 2)) + sum(as.numeric(1:floors))
  }
}