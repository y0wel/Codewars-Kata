growing_plant <- function(up_speed, down_speed, height) {
  current_height <- 0
  days <- 1
  while (current_height < height) {
    current_height <- current_height + up_speed
    if (current_height >= height) {
      break
    }
    else {
      current_height <- current_height - down_speed
      days <- days + 1
    }
  }
  return(days)
}