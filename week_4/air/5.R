load("air.RData")

air <- air |>
  group_by(county) |>
  slice_max(order_by = emissions) |>
  ungroup() |>
  arrange(desc(emissions))

save(air, file = "5.RData")

