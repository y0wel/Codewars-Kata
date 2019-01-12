words_to_marks <- function(s) {
  letters <- c(
    "a", "b", "c", "d", "e", "f", "g", "h",
    "i", "j", "k", "l", "m", "n", "o", "p",
    "q", "r", "s", "t", "u", "v", "w", "x",
    "y", "z"
  )
  positions <- c(1:26)
  df <- data.frame(letters, positions, stringsAsFactors = FALSE)
  sum <- 0
  for (i in 1:length(unlist(strsplit(s, "")))) {
    if (unlist(strsplit(s, ""))[i] %in% df$letters) {
      sum <- sum + df$positions[which(df$letters == unlist(strsplit(s, ""))[i])]
    }
  }
  return(sum)
}