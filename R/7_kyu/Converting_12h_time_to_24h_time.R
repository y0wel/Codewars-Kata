to24hourtime <- function(hour, minute, period) {
  if (period == "pm") {
    hour <- ifelse(hour == 12, hour, hour + 12)
  }
  if (period == "am" & hour == 12) {
    hour <- "00"
  }
  if (nchar(hour) == 1) {
    hour <- paste0("0", hour, collapse = "")
  }
  if (nchar(minute) == 1) {
    minute <- paste0("0", minute, collapse = "")
  }
  paste0(hour, minute, collapse = "")
}
