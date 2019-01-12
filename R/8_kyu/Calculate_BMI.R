bmi <- function(weight, height) {
  bmi <- (weight/height ^ 2)
  ifelse(bmi <= 18.5, "Underweight",
         ifelse(bmi > 18.5 & bmi <= 25, "Normal",
                ifelse(bmi > 25 & bmi <= 30, "Overweight", "Obese")))
}