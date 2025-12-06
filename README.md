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



