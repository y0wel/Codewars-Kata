evaporator <- function(content, evap_per_day, threshold) {
  threshold <- content * (threshold / 100)
  days <- 0
  while (content >= threshold) {
    content <- content - content * (evap_per_day / 100)
    days <- days + 1
  }
  days
}