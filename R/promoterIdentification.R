promoterIdentification <- function(edgelist, node = 'gene1', upper_bound = 100) {
  current_promoter_list <- vector(mode = 'list', upper_bound)
  index <- 1
  for (i in 1:nrow(edgelist)) {
    if (edgelist[i,2] == node) {
      current_promoter_list[[index]] <- c(edgelist[i,1])
      index <- index + 1
    }
  }
  return(current_promoter_list)
}
