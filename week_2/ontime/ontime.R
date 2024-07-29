bus <- read.csv("bus.csv")
rail <- read.csv("rail.csv")

service <- readline("Route: ")

if (service %in% bus$route) {
  info <- subset(bus, route == service)
  info$reliability <- info$numerator / info$denominator

  peak <- subset(info, peak == "PEAK")
  on_rel <- round(mean(peak$reliability)* 100)

  off_peak <- subset(info, peak == "OFF_PEAK")
  off_rel <- round(mean(off_peak$reliability) * 100)

  cat(paste0("On time ", on_rel, "% of the time during peak hours.", "\n"))
  cat(paste0("On time ", off_rel, "% of the time during off-peak hours."))

} else if (service %in% rail$route) {
  info <- subset(rail, route == service)
  info$reliability <- info$numerator / info$denominator

  peak <- subset(info, peak == "PEAK")
  on_rel <- round(mean(peak$reliability)* 100)

  off_peak <- subset(info, peak == "OFF_PEAK")
  off_rel <- round(mean(off_peak$reliability) * 100)

  cat(paste0("On time ", on_rel, "% of the time during peak hours.", "\n"))
  cat(paste0("On time ", off_rel, "% of the time during off-peak hours."))
} else {
  cat("Not a valid route.")
}







