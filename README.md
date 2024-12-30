# GOBarPlot

**GOBarPlot** is an R package designed to simplify the visualization of Gene Ontology (GO) enrichment analysis results. It provides functions for preparing GO data and generating bar charts to represent functional classification.

## Features

- **Data Preparation**: Cleans and organizes GO enrichment data for visualization.
- **Bar Chart Visualization**: Generates publication-ready bar charts of GO enrichment results.
- **Customizable Outputs**: Users can adjust plot dimensions and save outputs in PDF format.

---

## Installation

To install the development version of **GOBarPlot** from GitHub, use the following commands:

```R
# Install devtools if not already installed
install.packages("devtools")

# Install GOBarPlot from GitHub
devtools::install_github("Khaled-H-Mousa/GOBarPlot")
```

---

## Usage

### 1. Load the Package
```R
library(GOBarPlot)
```

### 2. Prepare Data
Use the `prepare_go_data` function to read and preprocess the GO enrichment data.

```R
# Prepare GO data
file_path <- "path/to/GO_ontology.tsv"
go_data <- prepare_go_data(file_path)
```

### 3. Generate Bar Chart
Use the `plot_go_bar` function to create and save a bar chart of GO enrichment results.

```R
# Generate and save the bar chart
output_file <- "Gene_ontology_top3.pdf"
plot_go_bar(go_data, output_file)
```

---

## Requirements

- **R version**: ≥ 4.0.0
- **Dependencies**:
  - `ggplot2`
  - `readr`

Install dependencies using:
```R
install.packages(c("ggplot2", "readr"))
```

---

## Contributing

Contributions are welcome! If you find a bug or have a feature request, please open an issue on [GitHub](https://github.com/Khaled-H-Mousa/GOBarPlot).

---

## Acknowledgments

This package was created with inspiration from the analysis of GO enrichment data. Special thanks to the developers of `ggplot2` and `readr` for their excellent tools.
