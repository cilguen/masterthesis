setwd("C:/Users/Can/Desktop/masterthesis")

data <- read.csv("data/full_data.csv")

prosocial_data <- read.csv("data/prosocial_data.csv")

# run McNemar's to find out if average acceptance rate differs by group / individual offer

# Outcome = 0

a0 <- sum(data$choice0 == 1 & data$choice00 == 1)

b0 <- sum(data$choice0 == 1 & data$choice00 == 0)

c0 <- sum(data$choice0 == 0 & data$choice00 == 1)

d0 <- sum(data$choice0 == 0 & data$choice00 == 0)

mcn0 <- matrix(c(a0,b0,c0,d0), nrow = 2, byrow = TRUE)

mcnemar.test(mcn0, correct = FALSE)


a0_ps <- sum(prosocial_data$choice0 == 1 & prosocial_data$choice00 == 1)

b0_ps <- sum(prosocial_data$choice0 == 1 & prosocial_data$choice00 == 0)

c0_ps <- sum(prosocial_data$choice0 == 0 & prosocial_data$choice00 == 1)

d0_ps <- sum(prosocial_data$choice0 == 0 & prosocial_data$choice00 == 0)

mcn0_ps <- matrix(c(a0_ps,b0_ps,c0_ps,d0_ps), nrow = 2, byrow = TRUE)

mcnemar.test(mcn0_ps, correct = FALSE)

# Outcome = 1

a1 <- sum(data$choice1 == 1 & data$choice11 == 1)

b1 <- sum(data$choice1 == 1 & data$choice11 == 0)

c1 <- sum(data$choice1 == 0 & data$choice11 == 1)

d1 <- sum(data$choice1 == 0 & data$choice11 == 0)

mcn1 <- matrix(c(a1,b1,c1,d1), nrow = 2, byrow = TRUE)

mcnemar.test(mcn1, correct = FALSE)


a1_ps <- sum(prosocial_data$choice1 == 1 & prosocial_data$choice11 == 1)

b1_ps <- sum(prosocial_data$choice1 == 1 & prosocial_data$choice11 == 0)

c1_ps <- sum(prosocial_data$choice1 == 0 & prosocial_data$choice11 == 1)

d1_ps <- sum(prosocial_data$choice1 == 0 & prosocial_data$choice11 == 0)

mcn1_ps <- matrix(c(a1_ps,b1_ps,c1_ps,d1_ps), nrow = 2, byrow = TRUE)

mcnemar.test(mcn0_ps, correct = FALSE)