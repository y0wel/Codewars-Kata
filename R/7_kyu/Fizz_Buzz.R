solution <- function(n) {
  a <- sum(ifelse(1:(n - 1) %% 3 == 0 & 1:(n - 1) %% 5 != 0, 1, 0))
  b <- sum(ifelse(1:(n - 1) %% 3 != 0 & 1:(n - 1) %% 5 == 0, 1, 0))
  c <- sum(ifelse(1:(n - 1) %% 3 == 0 & 1:(n - 1) %% 5 == 0, 1, 0))
  c(a, b, c)
}