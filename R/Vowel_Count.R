get_count <- function(input_str) {
  string_vec <- unlist(strsplit(input_str, ""))
  length(string_vec[which(string_vec %in% c("a", "e", "i", "o", "u"))])  
}