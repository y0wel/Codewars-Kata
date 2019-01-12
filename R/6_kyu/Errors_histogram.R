hist <- function(s) {
  s <- unlist(strsplit(s, ""))
  u <- sum(ifelse(s == "u", 1, 0), na.rm = TRUE)
  w <- sum(ifelse(s == "w", 1, 0), na.rm = TRUE)
  x <- sum(ifelse(s == "x", 1, 0), na.rm = TRUE)
  z <- sum(ifelse(s == "z", 1, 0), na.rm = TRUE)
  whitespace_u <- ifelse(u >= 10, "    ", "     ")
  whitespace_w <- ifelse(w >= 10, "    ", "     ")
  whitespace_x <- ifelse(x >= 10, "    ", "     ")
  whitespace_z <- ifelse(z >= 10, "    ", "     ")
  paste0(
    ifelse(u != 0,
      paste0(
        "u  ", u, whitespace_u, paste0(replicate(u, "*"), collapse = ""),
        ifelse(w != 0 | x != 0 | z != 0, "\r", "")
      ), ""
    ),
    ifelse(w != 0,
      paste0(
        "w  ", w, whitespace_w, paste0(replicate(w, "*"), collapse = ""),
        ifelse(x != 0 | z != 0, "\r", "")
      ), ""
    ),
    ifelse(x != 0,
      paste0(
        "x  ", x, whitespace_x, paste0(replicate(x, "*"), collapse = ""),
        ifelse(z != 0, "\r", "")
      ), ""
    ),
    ifelse(z != 0,
      paste0("z  ", z, whitespace_z, paste0(replicate(z, "*"), collapse = "")), ""
    )
  )
}