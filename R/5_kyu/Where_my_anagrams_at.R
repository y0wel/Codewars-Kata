anagrams <- function(word, words) {
  words <- words[which(nchar(words) == nchar(word))]
  result_words <- c()
  one <- table(strsplit(word, split = "")[[1]])
  for (i in 1:length(words)) {
    two <- table(strsplit(words[i], split = "")[[1]])
    if (length(one) >= length(two)) {
      result <- names(one) %in% names(two)
    } else {
      result <- names(two) %in% names(one)
    }
    if (length(unique(result)) == 1) {
      if (unique(result) == TRUE) {
        result_words <- append(result_words, words[i])
      }
    }
  }
  if (length(result_words) == 0) {
    return(character(0))
  } else {
    return(result_words)
  }
}