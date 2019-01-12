repeats <- function(arr) {
  sum(arr[which(!arr %in% arr[duplicated(arr)])], na.rm = TRUE)
}