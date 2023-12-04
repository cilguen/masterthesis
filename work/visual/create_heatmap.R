library(ggplot2)

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

##### create correlation matrix of all choice variables #####

prosocial_data <- subset(data, participant.svo_category == "Prosocial")


table(data$choice1, data$choice02)
table(prosocial_data$choice1, prosocial_data$choice02)

table(data$choice1, data$choice11)
table(prosocial_data$choice1, prosocial_data$choice11)

table(data$choice2, data$choice04)
table(prosocial_data$choice2, prosocial_data$choice04)

table(data$choice2, data$choice13)
table(prosocial_data$choice2, prosocial_data$choice13)

table(data$choice2, data$choice22)
table(prosocial_data$choice2, prosocial_data$choice22)

table(data$choice3, data$choice06)
table(data$choice3, data$choice15)
table(data$choice3, data$choice24)
table(data$choice3, data$choice33)