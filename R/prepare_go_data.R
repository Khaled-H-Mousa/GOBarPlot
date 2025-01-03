#' Prepare GO Data
#'
#' Reads and preprocesses a GO enrichment results file, filtering and formatting the data
#' for visualization.
#'
#' @param file_path A string specifying the path to the GO enrichment results file (TSV format).
#' @return A data frame with the columns `genes_number`, `category`, and `description`, where
#'         `description` is ordered based on the `category`.
#' @export
prepare_go_data <- function(file_path) {
  # Read the GO data
  E <- read.csv(file_path, sep = "\t", header = TRUE)

  # Filter and organize data
  target_name <- c("genes_number", "category", "description")
  E <- E[target_name]
  E <- E[!duplicated(E$description), ]
  E$description <- factor(E$description, levels = E$description[order(E$category)])

  return(E)
}
