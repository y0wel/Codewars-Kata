high <- function(x) {
  words <- strsplit(x, split = " ")[[1]]
  words <- words[which(words != "")]
  x <- paste(words, collapse = " ")
  n <- x
  letters <- c(
    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
    "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
  )
  numbers <- 1:26
  df <- data.frame(letters, numbers, stringsAsFactors = FALSE)
  for (i in 1:nrow(df)) {
    n <- gsub(df$letters[i], paste0(df$numbers[i], " "), n)
  }
  n <- strsplit(as.character(n), split = "  ")[[1]]
  chars <- c()
  for (i in 1:length(n)) {
    chars <- append(chars, strsplit(n[i], split = " "))
  }
  num <- c()
  for (i in 1:length(chars)) {
    num <- append(num, sum(as.numeric(unlist(chars[i]))))
  }
  words[which(num == max(num))][1]
}