seven <- function(m) {
  steps <- 0
  if (m == 0) {
    result <- c(m, steps)
  }
  else {
    while (nchar(as.character(m)) > 2) {
      m_vector <- unlist(strsplit(as.character(m), ""))
      m_first_digits <- as.numeric(paste0(m_vector[1:length(m_vector) - 1], collapse = ""))
      # to get first digits use m %/% 10
      m <- m_first_digits - (2 * (m %% 10))
      steps <- steps + 1
      result <- c(m, steps)
    }
  }
  result
}