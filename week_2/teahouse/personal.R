cat("Choose: A. Eggplant B. Chickpea C. Spinach D. Zucchini")
answer <- readline("Answer: ")

if (answer == "A") {
  cat("You should make Eggplant Parmesan")
} else if (answer == "B") {
  cat("You should make Chickpea Curry")
} else if (answer == "C") {
  cat("You should make Spinach and Ricotta Stuffed Shells")
} else if (answer == "D") {
  cat("You should make Zucchini Noodles with Pesto")
} else {
  cat("Choose of the options available, please")
}