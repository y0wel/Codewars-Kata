dateNbDays <- function(a0, a, p) {
  days <- 0
  p_day <- p / 36000
  while (round(a0, digits = 4) < a) {
    a0 <- a0 + a0 * p_day
    days <- days + 1
  }
  start_date <- "2016-01-01"
  start_date <- as.Date(start_date)
  as.character(start_date + days)
}