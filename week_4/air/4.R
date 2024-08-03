load("air.RData")

air <- air |>
  filter(!is.na(emissions)) |>
  filter(county == "OR - Marion") |>
  arrange(desc(emissions))

save(air, file = "4.RData")
