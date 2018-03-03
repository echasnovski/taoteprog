library(tidygraph)

# Chapters ----------------------------------------------------------------
ttp_chapters <- read.table(
  file = file.path("data-raw", "ttp_chapters.csv"),
  header = TRUE, sep = ";", quote = "",
  stringsAsFactors = FALSE
) %>%
  as_tibble()

usethis::use_data(ttp_chapters)


# Edges -------------------------------------------------------------------
ttp_edges <- read.table(
  file = file.path("data-raw", "ttp_edges.csv"),
  header = TRUE, sep = ";", quote = "",
  stringsAsFactors = FALSE
) %>%
  as_tibble()

usethis::use_data(ttp_edges)
