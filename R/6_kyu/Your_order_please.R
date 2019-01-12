your_order <- function(sentence) {
  s <- unlist(strsplit(sentence, split = " "))
  df <- as.data.frame(s, stringsAsFactors = FALSE)
  splitted <- as.integer(unlist(strsplit(df$s, split = "")))
  splitted <- splitted[is.na(splitted) == FALSE]
  df$order <- splitted
  df <- df[order(df$order), ]
  paste0(df$s, collapse = " ")
}