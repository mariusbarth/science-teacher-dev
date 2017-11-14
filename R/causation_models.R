library(DiagrammeR)
# library(shinydegs.definitions)

set_shinydegs_theme()

causality_nodes <- create_node_df(
  n = 6
  , nodes = 1:6
  , label = LETTERS[1:6]
  , color = getOption("shinydegs.theme")$col
  , fontname = "Tex Gyre Heros Cn"
)

causality_edges <- create_edge_df(
  from = 1
  , to = 2
  , color = ""
)

causality_edges_2 <- create_edge_df(
  from = 2
  , to = 1
  , color = ""
)

reciproc <- create_edge_df(
  from = c(1, 2)
  , to = c(2, 1)
  , color = ""
)

common_cause <- create_edge_df(
  from = rep(3, 2)
  , to = c(1, 2)
  , color = ""
)

multi_determinism <- create_edge_df(
  from = rep(1:6, each = 2)
  , to = rep(6:1, 2)
  , color = ""
)


causality_graph <- create_graph(nodes_df = causality_nodes, edges_df = causality_edges)
causality_graph_2 <- create_graph(nodes_df = causality_nodes, edges_df = causality_edges_2)
causality_graph_3 <- create_graph(nodes_df = causality_nodes, edges_df = common_cause)
causality_graph_4 <- create_graph(nodes_df = causality_nodes, edges_df = multi_determinism)
causality_graph_5 <- create_graph(nodes_df = causality_nodes, edges_df = reciproc)

# render_graph(causality_graph_3)
