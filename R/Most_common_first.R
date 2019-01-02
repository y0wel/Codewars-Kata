most_common <- function(s) {
  if (s == "") {
    return("")
  }
  else {
    a <- unlist(strsplit(s, ""))
    b <- c(0)
    for (i in 1:length(a)) {
      b[i] <- sum(nchar(a[which(a == a[i])]))
    }
    df <- data.frame(a, b, stringsAsFactors = FALSE)
    df <- df[order(df$b, decreasing = TRUE), ]
    paste0(df$a, collapse = "")
  }
}