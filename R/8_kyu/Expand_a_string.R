expand <- function(s) {
  if (s == "") {
    return(character(0))
  }
  else {
    unlist(strsplit(s, ""))
  }
}