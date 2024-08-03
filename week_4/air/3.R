load("2.RData")

air <- air |>
  filter(county == "OR - Marion")

save(air, file = "3.RData")
