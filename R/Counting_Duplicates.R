duplicate_count <- function(text) {
  text <- unlist(strsplit(tolower(text), ""))
  length(unique(text[duplicated(text)]))
}