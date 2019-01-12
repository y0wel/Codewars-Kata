hero <- function(bullets, dragons) {
  ifelse(bullets / dragons >= 2, TRUE, FALSE)
}