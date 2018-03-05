library(taoteprog)
library(tidyverse)
library(tidygraph)
library(ggraph)

set.seed(201803)


# Data creation and exploration -------------------------------------------
ttp_raw <- tbl_graph(nodes = ttp_chapters, edges = ttp_edges, directed = TRUE)
ttp_raw

ttp <- ttp_raw %>%
  # Remove loops
  activate(edges) %>%
  filter(!edge_is_loop()) %>%
  # Remove isolated nodes
  activate(nodes) %>%
  filter(!node_is_isolated())
ttp

# Visualization
ttp %>%
  ggraph(layout = "nicely") +
    geom_edge_link(
      aes(colour = type),
      arrow = arrow(length = unit(1.5, "mm")),
      start_cap = circle(3, "mm"),
      end_cap = circle(3, "mm")
    ) +
    geom_node_text(aes(label = chapter), size = 5) +
    scale_edge_colour_manual(values = c(ally = "#22B022",
                                        opponent = "#A4AAF6")) +
    theme_graph() +
    labs(
      title = '"Tao Te Programming" alliance graph',
      subtitle = "Nodes represent chapter numbers, edges - connections",
      caption = "@echasnovski"
    )

# Confirm edge type disbalance
ttp_edges %>% count(type)


# Find central advice -----------------------------------------------------
edges_peace <- ttp_edges %>%
  transmute(
    from = if_else(type == "ally", chapter1, chapter2),
    to = if_else(type == "ally", chapter2, chapter1)
  )

tbl_graph(
  nodes = ttp_chapters, edges = edges_peace, directed = TRUE
) %>%
  activate(nodes) %>%
  mutate(centr = centrality_pagerank()) %>%
  as_tibble() %>%
  arrange(desc(centr))
