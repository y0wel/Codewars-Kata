isSumOfCubes <- function(s) {
  numbers <- c("0", "1", "2", "3", "4", "5", "6", "7", "8", "9")
  s <- unlist(strsplit(s, split = ""))
  result <- ifelse(s %in% numbers, s, ",")
  new_result <- ""
  counter <- 0
  for (i in 1:length(result)) {
    if (counter != 3) {
      if (result[i] %in% numbers) {
        counter <- counter + 1
        new_result[i] <- result[i]
      }
      else {
        new_result[i] <- result[i]
        counter <- 0
      }
    }
    else {
      if (result[i] %in% numbers) {
        new_result[i] <- paste(",", result[i])
        counter <- 1
      }
      else {
        new_result[i] <- result[i]
        counter <- 0
      }
    }
  }
  result <- unlist(strsplit(new_result, split = " "))
  result <- as.numeric(unlist(strsplit(paste0(result, collapse = ""), split = ",")))
  numbers <- result[is.na(result) == FALSE]
  df <- as.data.frame(numbers)
  for (i in 1:nrow(df)) {
    numbers <- as.numeric(unlist(strsplit(as.character(df$numbers[i]), split = "")))
    df$cube[i] <- sum(numbers^3)
  }
  result <- as.numeric(ifelse(df$numbers == df$cube, df$numbers, ""))
  result <- result[is.na(result) == FALSE]
  if (length(result) != 0) {
    result[length(result) + 1] <- sum(result)
    paste(paste0(result, collapse = " "), "Lucky")
  } else {
    "Unlucky"
  }
}