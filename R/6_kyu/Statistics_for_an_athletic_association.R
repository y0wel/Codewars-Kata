stat <- function(strg) {
  times <- as.POSIXct(gsub("\\|", ":", unlist(strsplit(strg, ","))), format = "%H:%M:%S")
  timediff <- as.numeric(difftime(max(times), min(times), units = "secs"))
  hours <- floor(timediff / 3600)
  minutes <- floor((timediff - hours * 3600) / 60)
  secs <- timediff - hours * 3600 - minutes * 60
  range <- gsub(
    ":", "\\|",
    substr(as.character(as.POSIXct(paste0(hours, ":", minutes, ":", secs),
      format = "%H:%M:%S"
    )),
    start = 12,
    stop = 21
    )
  )
  mean <- gsub(":", "\\|", substr(as.character(mean(times)), start = 12, stop = 21))
  median <- gsub(":", "\\|", substr(as.character(median(times)), start = 12, stop = 21))
  paste0("Range: ", range, " Average: ", mean, " Median: ", median)
}