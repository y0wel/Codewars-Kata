squaresInRect <- function(lng, wd) {
  if (lng == wd) {
    return(NULL)
  }
  else {
    smaller_side <- ifelse(lng > wd, wd, lng)
    bigger_side <- ifelse(lng > wd, lng, wd)
    i <- 2
    side_vec <- c(smaller_side)
    area <- smaller_side * smaller_side
    while (area != 0) {
      helper <- bigger_side
      bigger_side <- smaller_side
      smaller_side <- helper - smaller_side
      if (bigger_side < smaller_side) {
        bigger_side <- bigger_side + smaller_side
        smaller_side <- bigger_side - smaller_side
        bigger_side <- bigger_side - smaller_side
      }
      area <- smaller_side * smaller_side
      side_vec[i] <- smaller_side
      i <- i + 1
    }
    return(side_vec[-length(side_vec)])
  }
}