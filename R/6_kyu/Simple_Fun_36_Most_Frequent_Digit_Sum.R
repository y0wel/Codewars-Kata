most_frequent_digit_sum <- function(n) {
  create_input_vector <- function(number) {
    number_list <- c(number)
    i <- 2
    while (number > 0) {
      number <- number - sum(as.numeric(unlist(strsplit(as.character(number), ""))))
      number_list[i] <- number
      i <- i + 1
    }
    data.frame(unlist(strsplit(as.character(number_list), ",")), stringsAsFactors = FALSE)
  }
  numbers <- create_input_vector(n)
  for (i in 1:nrow(numbers)) {
    numbers$sumsum[i] <- sum(as.numeric(unlist(strsplit(numbers[i, 1], ""))))
  }
  freq_table <- table(numbers$sumsum)
  max <- max(table(numbers$sumsum))
  ifelse(length(as.numeric(names(freq_table[which(freq_table == max)]))) > 1,
    max(as.numeric(names(freq_table[which(freq_table == max)]))),
    as.numeric(names(freq_table[which(freq_table == max)]))
  )
}