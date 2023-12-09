source("C:/Users/Can/Desktop/masterthesis/masterthesis/work/prep/master_prep.R")

# run McNemar's to find out if average acceptance rate differs by group / individual offer

# Outcome = 0

a <- sum(data$choice0 == 1 & data$choice00 == 1)

b <- sum(data$choice0 == 1 & data$choice00 == 0)

c <- sum(data$choice0 == 0 & data$choice00 == 1)

d <- sum(data$choice0 == 0 & data$choice00 == 0)

mcn0 <- matrix(c(a,b,c,d), nrow = 2, byrow = TRUE)

mcnemar.test(mcn0, correct = FALSE)


a_ps <- sum(prosocial_data$choice0 == 1 & prosocial_data$choice00 == 1)

b_ps <- sum(prosocial_data$choice0 == 1 & prosocial_data$choice00 == 0)

c_ps <- sum(prosocial_data$choice0 == 0 & prosocial_data$choice00 == 1)

d_ps <- sum(prosocial_data$choice0 == 0 & prosocial_data$choice00 == 0)

mcn0_ps <- matrix(c(a_ps,b_ps,c_ps,d_ps), nrow = 2, byrow = TRUE)

mcnemar.test(mcn0_ps, correct = FALSE)
