load("air.RData")

air$emissions <- as.numeric(air$emissions)

air <- air |>
  group_by(level_1, pollutant) |>
  summarize(emissions = sum(emissions, na.rm = TRUE)) |>
  arrange(level_1, pollutant) |>
  rename(source = level_1)

save(air, file = "7.RData")
