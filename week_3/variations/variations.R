random_character <- function() {
  sample(letters, 1)
}

print_sequence <- function(length) {
  for (i in length) {
    cat(random_character())
    Sys.sleep(0.25)
  }
}

length = (1:20)
print_sequence(length)