# loading the data
books <- read.csv("books.csv")
authors <- read.csv("authors.csv")
View(books)

# writer
# a filter that will find the book of this author
writer <- books$author == "Mia Morgan"
books[writer,] # apply filter to columns

# musician
# filter for topic and year
musician <- (books$topic == "Music" & books$year == 1613)
books[musician,]

# traveler
# an or filter for an author and year filter
traveler <- ((books$author == "Lysandra Silverleaf" | books$author == "Elena Petrova") & books$year == 1775)
books[traveler,]

# painter
# a filter that defines topic, range for pages and two options for year
painter <- (books$topic == "Art" & (books$pages >= 200 & books$pages <= 300) & (books$year == 1990 | books$year == 1992))
books[painter,]

# scientist
# use grepl to find Quantum Mechanics among titles
scientist <- grepl("Quantum Mechanics", books$title)
books[scientist,]

# teacher
# a filter to find the authors from this city
town <- authors$hometown == "Zenthia"
authors[town,]
# look for the books of these authors and define which was published in 1700s
teacher <- books$author == "Jack Parker" | books$author == "Kenji Sato"
books[teacher,]






