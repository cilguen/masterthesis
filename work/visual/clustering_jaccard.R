setwd("C:/Users/Can/Desktop/masterthesis")

data <- read.csv("data/full_data.csv")

prosocial_data <- read.csv("data/prosocial_data.csv")


library(cluster)
library(fpc)
library(mclust)
library(dplyr)



choices <- data %>%
  select(starts_with("choice"))

choices <- data %>% dplyr::select(starts_with("choice"))

d <- dist(choices, method="binary") # construct a distance matrix.

method <- "ward.D2"
fit <- hclust(d, method = method)

plot(fit, cex=0.4)
rect.hclust(fit, k=3)

groups <- cutree(hclust(d, method=method), k=3) # Assign observations to groups

cluster::clusplot(choices, groups, color=TRUE, shade=TRUE, labels=2, lines=0)


guess <- mclust::Mclust(choices)
summary(guess)
