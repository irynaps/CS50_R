art <- data.frame(
  A = c(" ", " ", " ", " ", " "),
  B = c(" ", " ", " ", " ", " "),
  C = c(" ", " ", " ", " ", " "),
  D = c(" ", " ", " ", " ", " "),
  E = c(" ", " ", " ", " ", " ")
)

print(art)

colnames(art) <-c("o", "t", "t", "f", "f")
print(art)

art$s <- c(" ", " ", " ", " ", " ")
print(art)

art[2, 2] <- "<"
art[2, 3] <- "<"
art[2, 5] <- ">"
art[2, 6] <- ">"
print(art)


art[3, 3] <- "¨"
art[3, 4] <- "¨"
art[3, 5] <- "¨"
print(art)


art[4, 3] <- "_"
art[4, 4] <- "_"
art[4, 5] <- "_"
print(art)
