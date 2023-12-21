setwd("C:/Users/Can/Desktop/masterthesis")

data <- read.csv("data/full_data.csv")

prosocial_data <- read.csv("data/prosocial_data.csv")

library(MASS)

# run logistic regression

##### test for significant effects of choices to one another ##### 

summary(glm(choice0 ~ 
              choice00 + 
              choice01 +
              choice02 +
              choice03 +
              choice04 +
              choice05 +
              choice06, data = data, family = "binomial"))

summary(glm(choice1 ~ 
              choice11 +
              choice12 +
              choice13 +
              choice14 +
              choice15 +
              choice16, data = data, family = "binomial"))

summary(glm(choice2 ~ 
              choice22 +
              choice23 +
              choice24 +
              choice25 +
              choice26, data = data, family = "binomial"))

summary(glm(choice3 ~ 
              choice33 +
              choice34 +
              choice35 +
              choice36, data = data, family = "binomial"))

summary(glm(choice4 ~ 
              choice44 +
              choice45 +
              choice46, data = data, family = "binomial"))

##### test for significant effects of choices to one another pt2 ##### 

summary(glm(choice0 ~ choice00, data = data, family = "binomial"))

summary(glm(choice1 ~ choice02 + choice11, data = data, family = "binomial"))

summary(glm(choice2 ~ choice04 + choice13 + choice22, data = data, family = "binomial"))

summary(glm(choice3 ~ choice06 + choice15 + choice24 + choice33, data = data, family = "binomial"))

summary(glm(choice4 ~ choice26 + choice35 + choice44, data = data, family = "binomial"))

##### create new outcome variable that counts the number of "unfair" offers accepted #####

data$uo_accepted <- rowSums(data[, c("choice0", "choice1", "choice00", "choice01", "choice02", "choice03", "choice11", "choice12")] == 1)

table(data$uo_accepted)
summary(glm(uo_accepted ~ 
              choice00 +
              choice01 +
              choice02 +
              choice03 +
              choice04 +
              choice05 +
              choice06 +
              choice11 +
              choice12 +
              choice13 +
              choice14 +
              choice15 +
              choice16 +
              choice22 +
              choice23 +
              choice24 +
              choice25 +
              choice26 +
              choice33 +
              choice34 +
              choice35 +
              choice36 +
              choice44 +
              choice45 +
              choice46 +
              choice55 +
              choice56 +
              choice66, data = data, family = "poisson"))

hist(data$choice12)
hist(data$choice03)
hist(data$choice02)
hist(data$choice01)

