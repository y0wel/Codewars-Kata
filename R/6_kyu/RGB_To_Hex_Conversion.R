rgb <- function(r, g, b) {
  decimal_to_hex <- function(n) {
    n <- ifelse(n < 0, 0,
      ifelse(n > 255, 255, n)
    )
    div <- c()
    mod <- c()
    if (n == 0) {
      "00"
    } else {
      while (n > 0) {
        div <- append(div, floor(n / 16))
        mod <- append(mod, n %% 16)
        n <- div[length(div)]
      }
      mod <-
        ifelse(mod == 10, "A",
          ifelse(mod == 11, "B",
            ifelse(mod == 12, "C",
              ifelse(mod == 13, "D",
                ifelse(mod == 14, "E",
                  ifelse(mod == 15, "F", mod)
                )
              )
            )
          )
        )
      paste0(mod[2], mod[1], collapse = "")
    }
  }
  gsub("NA", "0", paste0(decimal_to_hex(r), decimal_to_hex(g), decimal_to_hex(b), collapse = ""))
}