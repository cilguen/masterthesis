setwd("C:/Users/Can/Desktop/masterthesis")

data <- read.csv("data/full_data.csv")

prosocial_data <- subset(data, participant.svo_category == "Prosocial")

# Descriptive statistics

library(ggplot2)

summary(data$Age)
table(data$Age)

table(data$Sex)

table(data$participant.svo_category)

table(data$Age, data$Sex)

# Create ggplot with custom colors and integer y-axis scale
ggplot(data, aes(Age, fill = Sex)) +
  geom_histogram(binwidth = 1, color = "black", alpha = 0.7) +
  scale_fill_manual(values = setNames(c("#7F7F7F", "#C0C0C0"), c("Male", "Female"))) +
  theme_minimal() +
  scale_y_continuous(breaks = seq(0, max(table(data$Age)), by = 1)) +
  labs(title = "Histogram of Age by Gender",
       x = "Age",
       y = "Frequency")