duplicate_encode <- function(word) {
  word <- utf8ToInt(tolower(word))
  duplicates <- unique(word[duplicated(word) | duplicated(word, fromLast = TRUE)])
  for (i in 1:length(word)) {
    if (word[i] %in% duplicates) {
      word[i] <- 41
    }
    else {
      word[i] <- 40
    }
  }
  intToUtf8(as.integer(word))
}