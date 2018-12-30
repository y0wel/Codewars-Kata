gps <- function(s, x) {
  if (is.null(x) | length(x) <= 1) {
    return(0)
  }
  else {
    y <- x[2:length(x)]
    x <- x[-length(x)]
    df <- data.frame(x, y)
    df$speed <- floor(3600 * (df$y - df$x) / s)
    max(df$speed)
  }
}