library(readr)
library(stringr)
library(tidyverse)
library(ggplot2)

song <- read_file("lilac_wine.txt")

song <- song |>
  str_replace_all(",", "") |>
  str_replace_all("\\?", "") |>
  str_to_lower() |>
  str_split_1("[\\s\\n]+")


words_count <- tibble(word = song) |>
  count(word, name = "count", sort = TRUE) |>
  filter(count > 2)

words_count$count <- as.numeric(words_count$count)

p <- ggplot(words_count, aes(x = reorder(word, -count), y = count)) +
  geom_col(aes(fill = count)) +
  scale_fill_viridis_c("count", guide = "none") +
  labs(
    x = "Word",
    y = "Count"
  ) +
  theme_minimal()

ggsave(
  "lyrics.png",
  plot = p,
  width = 1200,
  height = 900,
  units = "px"
)


