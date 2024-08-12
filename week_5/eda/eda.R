library(ggplot2)
library(tidyr)

grains <- read.csv("GrainPrices.csv")

nrow(grains)
#5757

grains$Date <- as.Date(grains$Date, format = "%m/%d/%y")
min(grains$Date)
max(grains$Date)
# range from 2000-01-03 till 2022-12-14

anyNA(grains)
# no nulls

grain_types = names(grains)[-1]

grains_long <- grains |>
  pivot_longer(cols = all_of(grain_types), names_to = "Grain", values_to = "Price")

p <- grains_long |>
  ggplot(aes(x = Date, y = Price, color = Grain)) +
  geom_line(
    linetype = 1,
    linewidth = 0.1
  ) +
  ylab("Grain Prices") +
  theme_classic() +
  ggtitle("Grain Prices Over Time")

ggsave(
  "visualization.png",
  plot = p,
  width = 1400,
  height = 800,
  units = "px"
)



