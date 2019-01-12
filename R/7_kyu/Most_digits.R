find_longest <- function(arr) {
  arr <- as.character(arr)
  as.numeric(arr[which(nchar(arr) == max(nchar(arr)))])[1]
}