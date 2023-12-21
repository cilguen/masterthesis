setwd("C:/Users/Can/Desktop/masterthesis")

data <- read.csv("data/full_data.csv")

prosocial_data <- read.csv("data/prosocial_data.csv")

# run fixed effect models

library("fixest")

data$uo_count <- rowSums(data[, c("choice0", "choice1", "choice00", "choice01", "choice02", "choice03", "choice11", "choice12")] == 1)

data$go_count <- rowSums(data[, c("choice00",
                                  "choice01",
                                  "choice02",
                                  "choice03",
                                  "choice04",
                                  "choice05",
                                  "choice06",
                                  "choice11",
                                  "choice12",
                                  "choice13",
                                  "choice14",
                                  "choice15",
                                  "choice16",
                                  "choice22",
                                  "choice23",
                                  "choice24",
                                  "choice25",
                                  "choice26",
                                  "choice33",
                                  "choice34",
                                  "choice35",
                                  "choice36",
                                  "choice44",
                                  "choice45",
                                  "choice46",
                                  "choice55",
                                  "choice56",
                                  "choice66")] == 1)

data$go_perc <- data$go_count / 28
  
data$io_count <- rowSums(data[, c("choice0",
                                  "choice1",
                                  "choice2",
                                  "choice3",
                                  "choice4")] == 1)

data$io_perc <- data$io_count / 5

feglm(uo_count ~ io_perc + go_perc | Age + Sex,  family = "poisson", data = data)

feols(uo_count ~ io_perc + go_perc | csw0(Age, Sex, participant.svo_category) , data = data)
feols(uo_count ~ io_perc + go_perc | csw0(Age, Sex) , data = prosocial_data)





feglm(
  c(choice0, choice1, choice2, choice3, choice4) ~
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
    choice66 |
    Age  , 
  family = "logit",
  data = data)

feglm(
  uo_count ~
    choice0 +
    choice00 |
    Age + Sex + id, 
  family = "poisson",
  data = data)
