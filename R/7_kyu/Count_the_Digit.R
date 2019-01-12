nbDig <- function(n, d) {
  squares <- 0:n
  squares <- squares * squares
  squares <- unlist(strsplit(as.character(squares), ""))
  return(length(squares[which(squares == as.character(d))]))
}