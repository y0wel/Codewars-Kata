listSquared <- function(m, n) {
  results <- list()
  counter <- 1
  for (i in 1:n) {
    range <- 1:i
    mod <- i %% range
    square_sum <- sum((range[which(mod == 0)])^2)
    if (sqrt(square_sum) %% 1 == 0 & i >= m) {
      results[[counter]] <- c(i, square_sum)
      counter <- counter + 1
    }
  }
  results
}