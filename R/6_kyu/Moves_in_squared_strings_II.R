rot <- function(s) {
  s_vec <- strsplit(s, split = "\n")[[1]]
  for (i in 1:length(s_vec)) {
    s_vec[i] <-
      paste0(rev(strsplit(s_vec[i], split = "")[[1]]), collapse = "")
  }
  paste0(rev(s_vec), collapse = "\n")
}

selfieAndRot <- function(s) {
  s_vec <- strsplit(s, split = "\n")[[1]]
  length <- nchar(s_vec[1])
  a <- paste0(s_vec, collapse = paste0(paste0(replicate(length, "."), collapse = ""), "\n"))
  rot_vec <- strsplit(rot(s), split = "\n")[[1]]
  b <- paste0(rot_vec, collapse = paste0("\n", paste0(replicate(length, "."), collapse = "")))
  paste0(
    a,
    paste0(replicate(length, "."), collapse = ""),
    "\n",
    paste0(replicate(length, "."), collapse = ""),
    b
  )
}

oper <- function(f, s) {
  f(s)
}