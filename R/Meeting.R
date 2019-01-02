meeting <- function(s) {
  s <- unlist(strsplit(s, ";"))
  s <- strsplit(s, ":")
  df <- as.data.frame(t(data.frame(s)))
  df$V1 <- toupper(df$V1)
  df$V2 <- toupper(df$V2)
  df <- df[order(df$V2, df$V1), ]
  paste0("(", df$V2, ", ", df$V1, ")", collapse = "")
}