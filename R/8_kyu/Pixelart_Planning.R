is_divisible <- function(wall_length, pixel_size) {
  ifelse(wall_length %% pixel_size == 0, TRUE, FALSE)
}