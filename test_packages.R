# Script to load required R packages

# List of packages to load
required_packages <- c("dplyr", "ggplot2", "tidyr", "readr", "shiny")

# Function to install and load packages
load_packages <- function(packages) {
  for (package in packages) {
    if (!require(package, character.only = TRUE)) {
      install.packages(package, dependencies = TRUE)  # Install if not available
      library(package, character.only = TRUE)  # Load the package
    } else {
      library(package, character.only = TRUE)  # Load the package
    }
  }
  cat("All packages are loaded successfully!\n")
}

# Call the function to load packages
load_packages(required_packages)
