predict_age <- function(age1, age2, age3, age4, age5, age6, age7, age8) {
  age <- c(age1, age2, age3, age4, age5, age6, age7, age8)
  floor((sum(age^2)^(1 / 2)) / 2)
}