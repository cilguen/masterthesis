library(ggplot2)

source("C:/Users/Can/Desktop/masterthesis/masterthesis/work/prep/master_prep.R")


##### Create heatmap of all choice variables #####

# Select columns containing "choice" in their name
choice_columns <- select(data, starts_with("choice"))

# Calculate the correlation matrix
cor_matrix <- cor(choice_columns)

# Convert correlation matrix to a data frame with row and column names
cor_df <- as.data.frame(as.table(cor_matrix))

# Create a heatmap
ggplot(data = cor_df, aes(x = Var1, y = Var2, fill = Freq)) +
  geom_tile() +
  scale_fill_gradient(low = "blue", high = "red") +
  theme_minimal() +
  labs(title = "Heatmap of Variables containing 'choice'")
