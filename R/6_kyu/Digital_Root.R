digital_root <- function(n) {
  num_char <- nchar(trunc(n))
  while (num_char >= 2) {
    numbers <- as.numeric(strsplit(as.character(n), split = "")[[1]])
    n <- sum(numbers)
    num_char <- nchar(trunc(n))
  }
  n
}