thirt <- function(n) {
  calculate_thirt <- function(n) {
    n <- as.numeric(strsplit(as.character(n), split = "")[[1]])
    seq <- c(1, 10, 9, 12, 3, 4)
    result <- c()
    counter <- 1
    for (i in length(n):1) {
      result <- append(result, (n[i] * seq[counter]))
      counter <- counter + 1
      if (counter == 7) {
        counter <- 1
      }
    }
    sum(result)
  }

  results <- c(n)
  n <- calculate_thirt(n)
  results <- append(results, n)
  while (results[length(results)] != results[(length(results) - 1)]) {
    n <- calculate_thirt(n)
    results <- append(results, n)
  }
  results[length(results)]
}