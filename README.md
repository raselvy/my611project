# STAT 611 Final Project – Pokémon Data Analysis
Author: Rachel Selvaraj

This project analyzes competitive Pokémon data using statistical visualization and techniques from BIOS 611. The analysis focuses on relationships between base stats, typing, generation, and competitive tiers using exploratory data analysis, clustering, and dimensionality reduction.

---

## Repository Structure

- `report.Rmd` – Main analysis and figure generation
- `pokemon_data.csv` – Dataset
- `Dockerfile` – Reproducible computing environment
- `Makefile` – Workflow automation
- `report.html` / `report.pdf` – Compiled report output

---

## How to Build and Run with Docker

### 1. Clone the repository
git clone https://github.com/raselvy/my611project
cd my611project
docker build . -t rachel-stat611

Next, visit http://localhost:8787 (username: rstudio, password: rstudio)
Once inside the RStudio terminal,
  make report.html

## How to Build `report.html` and `report.pdf`

This project uses a Makefile to fully automate report generation.

### Build the HTML report:

make report.html

### Build the PDF report:

make report.pdf

Both commands render the file `report.Rmd` using `rmarkdown::render()` and output the compiled report into the project root directory as either `report.html` or `report.pdf`.

If the report has already been built and no source files have changed, `make` will skip unnecessary re-rendering.

---

## Developer Instructions

The entire project workflow is organized and automated using a Makefile. Each major task is broken into modular targets with dependency tracking for reproducibility.

Key Makefile targets:

* `make` or `make report.html` – Builds the HTML report
* `make report.pdf` – Builds the PDF report
* `make clean` – Removes all generated report files

Dependencies:

* Reports automatically recompile when either `report.Rmd` or `pokemon_data.csv` is modified.
* The Makefile ensures that all outputs are rebuilt only when required.

All development should be performed inside the provided Docker container to ensure a consistent computing environment across systems.

---

## How to Get the Data

The dataset used for this analysis is included directly in this repository as:

pokemon_data.csv

The data was compiled from:

* Pokémon Database ([https://pokemondb.net](https://pokemondb.net))
* Smogon University competitive tier listings ([https://www.smogon.com](https://www.smogon.com))

No external downloading is required to reproduce the results. Once the repository is cloned, the data file is immediately available for report generation.

---
