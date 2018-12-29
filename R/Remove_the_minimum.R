remove_smallest <- function(numbers) {
  if (length(numbers) == 0) {
    return(integer(0))
  }
  else {
    for (i in 1:length(numbers)) {
      if (numbers[i] == min(numbers)) {
        break
      }
    }
    return(numbers[-i])
  }
}