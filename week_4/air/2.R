load("air.RData")

air <- air |>
  filter(!is.na(emissions)) |>
  arrange(desc(emissions))

save(air, file = "2.RData")