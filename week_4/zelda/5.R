load("zelda.RData")

zelda$num_producers <- (str_count(zelda$producers, ", ") + 1)

zelda <- zelda |>
  filter(num_producers > 1) |>
  group_by(title) |>
  filter(year == min(year)) |>
  arrange(year, title, system) |>
  select(-num_producers)

save(zelda, file = "5.RData")