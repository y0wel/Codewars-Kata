small_enough <- function(vector, limit) {
  ifelse(max(vector) <= limit, TRUE, FALSE)
}