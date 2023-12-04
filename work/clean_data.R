# This is code to clean the dataset

# Drop rows where the ID variable is empty
data <- subset(data, !is.na(id) & id != "")


library(tidyverse)

# Assuming your dataframe is named your_dataframe
data %>%
  summarise(across(ends_with("choice1"), sum, na.rm = TRUE))


# cleaning choice0 to choice4
for (i in 0:4) {
  col_name <- paste0("choice", i)
  data <- data %>%
    mutate(!!col_name := rowSums(select(., ends_with(col_name)), na.rm = TRUE))
}

# Assuming your dataframe is named data
for (i in 0:6) {
  col_name <- paste0("choice", sprintf("%02d", i))
  data <- data %>%
    mutate(!!col_name := rowSums(select(., ends_with(col_name)), na.rm = TRUE))
}
