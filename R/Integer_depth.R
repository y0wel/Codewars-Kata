compute_depth <- function(n) {
  counter <- 0
  digits <- ""
  while (length(digits) < 10) {
    counter <- counter + 1
    vals <- ifelse(unlist(strsplit(as.character(n * counter), "")) %in% digits, "",
      unlist(strsplit(as.character(n * counter), ""))
    )
    digits <- append(digits, unique(vals))
    digits <- digits[which(digits != "")]
  }
  counter
}