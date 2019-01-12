wallpaper <- function(l, w, h) {
  number <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
  plain <- c(
    "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
    "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen",
    "eighteen", "nineteen", "twenty"
  )
  df <- data.frame(number, plain, stringsAsFactors = FALSE)
  number_rolls <- ceiling((l * h * 2 + w * h * 2) / (0.52 * 10) * 1.15)
  df[which(df$number == number_rolls), 2]
}