library(GOBarPlot)

# Prepare data
data <- prepare_go_data(file_path = "data_test/Enrichment.tsv")
data
# Generate and save plot
g<-plot_go_bar(data)
library(ggplot2)

ggplot2::ggsave(g, filename = 'out/output_file.pdf', width = 10, height = 30)
