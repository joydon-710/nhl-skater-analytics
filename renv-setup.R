# renv-setup.R
# Run this in R to create an isolated project environment and install packages.
if (!requireNamespace("renv", quietly = TRUE)) install.packages("renv")
renv::init(bare = TRUE)
renv::install(c("tidyverse","broom","randomForest","caret","knitr"))
renv::snapshot()
cat("renv initialized. Use renv::activate() in future sessions to load the environment.\n")
