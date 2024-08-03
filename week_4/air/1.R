install.packages("tidyverse")
library("tidyverse")

air <- read.csv("air.csv")

air <- air |>
  select(
    c(
      state = State,
      county = State.County,
      pollutant = POLLUTANT,
      emissions = Emissions..Tons.,
      level_1 = SCC.LEVEL.1,
      level_2 = SCC.LEVEL.2,
      level_3 = SCC.LEVEL.3,
      level_4 = SCC.LEVEL.4))

air <- as_tibble(air)

air

air$emissions <- gsub(",", "", air$emissions)
air$emissions <- as.numeric(air$emissions)
save(air, file = "air.RData")





