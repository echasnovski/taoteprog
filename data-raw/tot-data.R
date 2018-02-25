library(tidygraph)

# Chapters ----------------------------------------------------------------
tot_chapters <- read.table(
  file = file.path("data-raw", "tot_chapters.csv"),
  header = TRUE, sep = ";", quote = "",
  stringsAsFactors = FALSE
) %>%
  as_tibble()

usethis::use_data(tot_chapters)


# Edges -------------------------------------------------------------------
tot_edges <- read.table(
  file = file.path("data-raw", "tot_edges.csv"),
  header = TRUE, sep = ";", quote = "",
  stringsAsFactors = FALSE
) %>%
  as_tibble()

usethis::use_data(tot_edges)
