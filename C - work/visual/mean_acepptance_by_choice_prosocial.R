setwd("C:/Users/Can/Desktop/masterthesis")

data <- read.csv("B - data/full_data.csv")

prosocial_data <- subset(data, participant.svo_category == "Prosocial")

data <- prosocial_data

# show average acceptance rate by offer amount

library(ggplot2)
library(gridExtra)


# choice0 to choice4

# Creating a new data frame with the percentage of occurrences for each choice variable
percentage_data_0_6 <- data.frame(
  category = paste0("choice",0:4),
  percentage = colMeans(data[, paste0("choice",0:4)] == 1, na.rm = TRUE) * 100
)

# Creating the bar chart
ggplot(percentage_data_0_6, aes(x = category, y = percentage)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Percentage of choiceX == 1", x = "Category", y = "Percentage") +
  ylim(0, 100) +  
  theme_minimal()  

# choice00 to choice06

# Creating a new data frame with the percentage of occurrences for each choice variable
percentage_data_00_06 <- data.frame(
  category = paste0("choice0",0:6),
  percentage = colMeans(data[, paste0("choice0",0:6)] == 1, na.rm = TRUE) * 100
)

# Creating the bar chart
ggplot(percentage_data_00_06, aes(x = category, y = percentage)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
  ylim(0, 100) +  
  theme_minimal()  

# choice11 to choice16

# Creating a new data frame with the percentage of occurrences for each choice variable
percentage_data_11_16 <- data.frame(
  category = paste0("choice1",1:6),
  percentage = colMeans(data[, paste0("choice1",1:6)] == 1, na.rm = TRUE) * 100
)

# Creating the bar chart
ggplot(percentage_data_11_16, aes(x = category, y = percentage)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
  ylim(0, 100) +  
  theme_minimal()  

# choice22 to choice26

# Creating a new data frame with the percentage of occurrences for each choice variable
percentage_data_22_26 <- data.frame(
  category = paste0("choice2",2:6),
  percentage = colMeans(data[, paste0("choice2",2:6)] == 1, na.rm = TRUE) * 100
)

# Creating the bar chart
ggplot(percentage_data_22_26, aes(x = category, y = percentage)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
  ylim(0, 100) +  
  theme_minimal()  

# choice33 to choice36

# Creating a new data frame with the percentage of occurrences for each choice variable
percentage_data_33_36 <- data.frame(
  category = paste0("choice3",3:6),
  percentage = colMeans(data[, paste0("choice3",3:6)] == 1, na.rm = TRUE) * 100
)

# Creating the bar chart
ggplot(percentage_data_33_36, aes(x = category, y = percentage)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
  ylim(0, 100) +  
  theme_minimal()  

# choice44 to choice46

# Creating a new data frame with the percentage of occurrences for each choice variable
percentage_data_44_46 <- data.frame(
  category = paste0("choice4",4:6),
  percentage = colMeans(data[, paste0("choice4",4:6)] == 1, na.rm = TRUE) * 100
)

# Creating the bar chart
ggplot(percentage_data_44_46, aes(x = category, y = percentage)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
  ylim(0, 100) +  
  theme_minimal()  

# choice55 to choice56

# Creating a new data frame with the percentage of occurrences for each choice variable
percentage_data_55_56 <- data.frame(
  category = paste0("choice5",5:6),
  percentage = colMeans(data[, paste0("choice5",5:6)] == 1, na.rm = TRUE) * 100
)

# Creating the bar chart
ggplot(percentage_data_55_56, aes(x = category, y = percentage)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
  ylim(0, 100) +  
  theme_minimal()  

# choice66

# Creating a new data frame with the percentage of occurrences for each choice variable
percentage_data_66 <- data.frame(
  category = paste0("choice6",6:6),
  percentage = mean(data[, paste0("choice6",6:6)] == 1, na.rm = TRUE) * 100
)

# Creating the bar chart
ggplot(percentage_data_66, aes(x = category, y = percentage)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
  ylim(0, 100) +  
  theme_minimal()  


library(ggplot2)
library(gridExtra)

# Combine all the plots
combined_plots <- grid.arrange(
  ggplot(percentage_data_0_6, aes(x = category, y = percentage)) +
    geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
    labs(title = "Percentage of choiceX == 1", x = "Category", y = "Percentage") +
    ylim(0, 100) +
    theme_minimal(),
  
  ggplot(percentage_data_00_06, aes(x = category, y = percentage)) +
    geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
    labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
    ylim(0, 100) +
    theme_minimal(),
  
  ggplot(percentage_data_11_16, aes(x = category, y = percentage)) +
    geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
    labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
    ylim(0, 100) +
    theme_minimal(),
  
  ggplot(percentage_data_22_26, aes(x = category, y = percentage)) +
    geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
    labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
    ylim(0, 100) +
    theme_minimal(),
  
  ggplot(percentage_data_33_36, aes(x = category, y = percentage)) +
    geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
    labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
    ylim(0, 100) +
    theme_minimal(),
  
  ggplot(percentage_data_44_46, aes(x = category, y = percentage)) +
    geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
    labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
    ylim(0, 100) +
    theme_minimal(),
  
  ggplot(percentage_data_55_56, aes(x = category, y = percentage)) +
    geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
    labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
    ylim(0, 100) +
    theme_minimal(),
  
  ggplot(percentage_data_66, aes(x = category, y = percentage)) +
    geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
    labs(title = "Percentage of choiceXX == 1", x = "Category", y = "Percentage") +
    ylim(0, 100) +
    theme_minimal(),
  
  ncol = 2  # You can adjust the number of columns as needed
)

# Print the combined plot
print(combined_plots)


library(ggplot2)
library(stringr)

# Combine all the data into one data frame
combined_data <- rbind(
  cbind(percentage_data_0_6, choice = "choice0"),
  cbind(percentage_data_00_06, choice = "choice00"),
  cbind(percentage_data_11_16, choice = "choice11"),
  cbind(percentage_data_22_26, choice = "choice22"),
  cbind(percentage_data_33_36, choice = "choice33"),
  cbind(percentage_data_44_46, choice = "choice44"),
  cbind(percentage_data_55_56, choice = "choice55"),
  cbind(percentage_data_66, choice = "choice66")
)

# Creating the combined plot without facets
ggplot(combined_data, aes(x = category, y = percentage, fill = choice)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.8), color = "black", alpha = 0.7) +
  labs(title = "Percentage of choiceX == 1", x = "Offer", y = "Percentage Accepted") +
  ylim(0, 100) +
  theme_minimal() +
  scale_fill_manual(values = c("choice0" = "blue", "choice00" = "red", "choice11" = "green", 
                               "choice22" = "orange", "choice33" = "purple", "choice44" = "pink",
                               "choice55" = "brown", "choice66" = "cyan")) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1),
        legend.position = "none") +
  scale_x_discrete(labels = function(x) str_replace(x, "choice", ""))

# only unfair offers
unfair_offers <- c("choice0", "choice00", "choice01", "choice1", "choice02", "choice11", "choice03", "choice12")

percentage_data_unfair_offers <- data.frame(
  category = unfair_offers,
  percentage = colMeans(data[, unfair_offers] == 1, na.rm = TRUE) * 100
)

# Creating the bar chart
ggplot(percentage_data_unfair_offers, aes(x = category, y = percentage)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Percentage of choiceX == 1", x = "Category", y = "Percentage") +
  ylim(0, 100) +  
  theme_minimal()  