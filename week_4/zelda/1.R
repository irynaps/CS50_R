install.packages("tidyverse")
library("tidyverse")
library(readr)
library(stringr)
library(tidyr)

zelda <- read.csv("zelda.csv")

split_release <- str_split(zelda$release, " - ")
zelda$year <- sapply(split_release, `[`, 1)
zelda$system <- sapply(split_release, `[`, 2)

zelda <- zelda |>
  select(-release) |>
  select(title, year, system, role, names)

zelda <- as_tibble(zelda)

zelda <- zelda |>
  pivot_wider(
    id_cols = c(title, year, system),
    names_from = role,
    values_from = names
  )

zelda <- zelda |>
  rename_with(tolower)

save(zelda, file = "zelda.RData")
