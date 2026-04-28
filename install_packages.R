# install_packages.R
# Run this once to install required CRAN packages for CDS 101 project work.

packages <- c(
  "tidyverse",
  "ggplot2",
  "dplyr",
  "readr",
  "rmarkdown",
  "knitr"
)

install_if_missing <- function(pkgs) {
  for (p in pkgs) {
    if (!requireNamespace(p, quietly = TRUE)) {
      message(sprintf("Installing package: %s", p))
      install.packages(p)
    } else {
      message(sprintf("Package already installed: %s", p))
    }
  }
}

install_if_missing(packages)
