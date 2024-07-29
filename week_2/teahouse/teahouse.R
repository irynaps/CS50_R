flavor = readline("Flavor: ")
caf = readline("Caffeine: ")

if (flavor == "Bold" && caf == "No") {
  cat("You might like rooibos tea")
} else if (flavor == "Bold" && caf == "Yes") {
  cat("You might like black tea")
} else if (flavor == "Light" && caf == "No") {
  cat("You might like chamomile tea")
} else if (flavor == "Light" && caf == "Yes") {
  cat("You might like green tea")
} else if (flavor != "Bold" || flavor != "Light"){
  cat("Enter either 'Light' or 'Bold' for flavor")
} else if (caf != "Yes" || caf != "No") {
  cat("Enter either 'No' or 'Yes' for caffeine")
}