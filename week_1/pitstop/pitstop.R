file <- readline("Enter the file title: ")
file <- read.csv(file)

print(nrow(file))
print(min(file$time))
print(max(file$time))
print(sum(file$time))
