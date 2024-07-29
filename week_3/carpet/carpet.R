calculate_growth_rate <- function(years, visitors) {
  visitors_d <- visitors[length(visitors)] - visitors[1]
  years_d <- years[length(years)] - years[1]
  avg_yearly_growth <- visitors_d / years_d
  return(avg_yearly_growth)
}

predict_visitors <- function(years, visitors, year) {
  g_rate <- calculate_growth_rate(years, visitors)
  last_year <- years[length(years)]
  last_visitors <- visitors[length(visitors)]
  years_ahead <- year - last_year
  predict <- last_visitors + (g_rate * years_ahead)
  return(predict)
}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
