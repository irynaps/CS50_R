calculate_happiness <- function(country, year, year_df) {
 if (country %in% year_df$country) {
  country_data <- year_df[year_df$country == country, ]

  y_c <- country_data[, -1]

  happiness <- round(apply(y_c, MARGIN = 1, FUN = sum), 2)
  cat(paste0(country, " (", year, "): ", happiness, "\n"))
 } else {
  cat(paste0(country, " (", year, "): data unavailable\n"))
 }
}


y_2020 <- read.csv("2020.csv")
y_2021 <- read.csv("2021.csv")
y_2022 <- read.csv("2022.csv")
y_2023 <- read.csv("2023.csv")
y_2024 <- read.csv("2024.csv")

country <- readline("Country: ")

for (i in 2020:2024) {
  csv <- get(paste0("y_", i))
  calculate_happiness(country, i, csv)
}

