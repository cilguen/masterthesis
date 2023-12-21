setwd("C:/Users/Can/Desktop/masterthesis")

data <- read.csv("data/full_data.csv")

prosocial_data <- read.csv("data/prosocial_data.csv")

library(ggplot2)

##### Outcome = 0 #####

# 0 vs 00

table(data$choice0, data$choice00)
table(prosocial_data$choice0, prosocial_data$choice00)

ggplot(data, aes(x = choice0, y = choice00)) +
  geom_count() + 
  labs(title = "choice0 vs choice00 fulldata",
       x = "choice0",
       y = "choice00",)

ggplot(prosocial_data, aes(x = choice0, y = choice00)) +
  geom_count() + 
  labs(title = "choice0 vs choice00 prosocial",
       x = "choice0",
       y = "choice00",)


##### Outcome = 1 #####

# 1 vs 02

table(data$choice1, data$choice02)
table(prosocial_data$choice1, prosocial_data$choice02)

ggplot(data, aes(x = choice1, y = choice02)) +
  geom_count() + 
  labs(title = "choice1 vs choice02 fulldata",
       x = "choice1",
       y = "choice02",)

ggplot(prosocial_data, aes(x = choice1, y = choice02)) +
  geom_count() + 
  labs(title = "choice1 vs choice02 prosocial",
       x = "choice1",
       y = "choice02",)

# 1 vs 11

table(data$choice1, data$choice11)
table(prosocial_data$choice1, prosocial_data$choice11)

ggplot(data, aes(x = choice1, y = choice11)) +
  geom_count() + 
  labs(title = "choice1 vs choice11 fulldata",
       x = "choice1",
       y = "choice11",)

ggplot(prosocial_data, aes(x = choice1, y = choice11)) +
  geom_count() + 
  labs(title = "choice1 vs choice11 prosocial",
       x = "choice1",
       y = "choice11",)

# 11 vs 02

table(data$choice11, data$choice02)
table(prosocial_data$choice11, prosocial_data$choice02)

ggplot(data, aes(x = choice11, y = choice02)) +
  geom_count() + 
  labs(title = "choice11 vs choice02 fulldata",
       x = "choice11",
       y = "choice02",)

ggplot(prosocial_data, aes(x = choice11, y = choice02)) +
  geom_count() + 
  labs(title = "choice11 vs choice02 prosocial",
       x = "choice11",
       y = "choice02",)

##### Outcome = 2 #####

# 2 vs 04

table(data$choice2, data$choice04)
table(prosocial_data$choice2, prosocial_data$choice04)

ggplot(data, aes(x = choice2, y = choice04)) +
  geom_count() + 
  labs(title = "choice2 vs choice04 fulldata",
       x = "choice2",
       y = "choice04",)

ggplot(prosocial_data, aes(x = choice2, y = choice04)) +
  geom_count() + 
  labs(title = "choice2 vs choice04 prosocial",
       x = "choice2",
       y = "choice04",)


# 2 vs 13

table(data$choice2, data$choice13)
table(prosocial_data$choice2, prosocial_data$choice13)

ggplot(data, aes(x = choice2, y = choice13)) +
  geom_count() + 
  labs(title = "choice2 vs choice13 fulldata",
       x = "choice2",
       y = "choice13",)

ggplot(prosocial_data, aes(x = choice2, y = choice13)) +
  geom_count() + 
  labs(title = "choice2 vs choice13 prosocial",
       x = "choice2",
       y = "choice13",)


# 2 vs 22

table(data$choice2, data$choice22)
table(prosocial_data$choice2, prosocial_data$choice22)

ggplot(data, aes(x = choice2, y = choice22)) +
  geom_count() + 
  labs(title = "choice2 vs choice22 fulldata",
       x = "choice2",
       y = "choice22",)

ggplot(prosocial_data, aes(x = choice2, y = choice22)) +
  geom_count() + 
  labs(title = "choice2 vs choice22 prosocial",
       x = "choice2",
       y = "choice22",)

# 22 vs 13

table(data$choice22, data$choice13)
table(prosocial_data$choice22, prosocial_data$choice13)

ggplot(data, aes(x = choice22, y = choice13)) +
  geom_count() + 
  labs(title = "choice22 vs choice13 fulldata",
       x = "choice22",
       y = "choice13",)

ggplot(prosocial_data, aes(x = choice22, y = choice13)) +
  geom_count() + 
  labs(title = "choice22 vs choice13 prosocial",
       x = "choice22",
       y = "choice13",)

# 22 vs 04

table(data$choice22, data$choice04)
table(prosocial_data$choice22, prosocial_data$choice04)

ggplot(data, aes(x = choice22, y = choice04)) +
  geom_count() + 
  labs(title = "choice22 vs choice04 fulldata",
       x = "choice22",
       y = "choice04",)

ggplot(prosocial_data, aes(x = choice22, y = choice04)) +
  geom_count() + 
  labs(title = "choice22 vs choice04 prosocial",
       x = "choice22",
       y = "choice04",)

# 13 vs 04

table(data$choice13, data$choice04)
table(prosocial_data$choice13, prosocial_data$choice04)

ggplot(data, aes(x = choice13, y = choice04)) +
  geom_count() + 
  labs(title = "choice13 vs choice04 fulldata",
       x = "choice13",
       y = "choice04",)

ggplot(prosocial_data, aes(x = choice13, y = choice04)) +
  geom_count() + 
  labs(title = "choice13 vs choice04 prosocial",
       x = "choice13",
       y = "choice04",)

##### Outcome = 3 #####

# 3 vs 06

table(data$choice3, data$choice06)
table(prosocial_data$choice3, prosocial_data$choice06)

ggplot(data, aes(x = choice3, y = choice06)) +
  geom_count() + 
  labs(title = "choice3 vs choice06 fulldata",
       x = "choice3",
       y = "choice06",)

ggplot(prosocial_data, aes(x = choice3, y = choice06)) +
  geom_count() + 
  labs(title = "choice3 vs choice06 prosocial",
       x = "choice3",
       y = "choice06",)

# 3 vs 15

table(data$choice3, data$choice15)
table(prosocial_data$choice3, prosocial_data$choice15)

ggplot(data, aes(x = choice3, y = choice15)) +
  geom_count() + 
  labs(title = "choice3 vs choice15 fulldata",
       x = "choice3",
       y = "choice15",)

ggplot(prosocial_data, aes(x = choice3, y = choice15)) +
  geom_count() + 
  labs(title = "choice3 vs choice15 prosocial",
       x = "choice3",
       y = "choice15",)

# 3 vs 24

table(data$choice3, data$choice24)
table(prosocial_data$choice3, prosocial_data$choice24)

ggplot(data, aes(x = choice3, y = choice24)) +
  geom_count() + 
  labs(title = "choice3 vs choice24 fulldata",
       x = "choice3",
       y = "choice24",)

ggplot(prosocial_data, aes(x = choice3, y = choice24)) +
  geom_count() + 
  labs(title = "choice3 vs choice24 prosocial",
       x = "choice3",
       y = "choice24",)

# 3 vs 33

table(data$choice3, data$choice33)
table(prosocial_data$choice3, prosocial_data$choice33)

ggplot(data, aes(x = choice3, y = choice33)) +
  geom_count() + 
  labs(title = "choice3 vs choice33 fulldata",
       x = "choice3",
       y = "choice33",)

ggplot(prosocial_data, aes(x = choice3, y = choice33)) +
  geom_count() + 
  labs(title = "choice3 vs choice33 prosocial",
       x = "choice3",
       y = "choice33",)

# 06 vs 15

table(data$choice06, data$choice15)
table(prosocial_data$choice06, prosocial_data$choice15)

ggplot(data, aes(x = choice06, y = choice15)) +
  geom_count() + 
  labs(title = "choice06 vs choice15 fulldata",
       x = "choice06",
       y = "choice15",)

ggplot(prosocial_data, aes(x = choice06, y = choice15)) +
  geom_count() + 
  labs(title = "choice06 vs choice15 prosocial",
       x = "choice06",
       y = "choice15",)

# 06 vs 24

table(data$choice06, data$choice24)
table(prosocial_data$choice06, prosocial_data$choice24)

ggplot(data, aes(x = choice06, y = choice24)) +
  geom_count() + 
  labs(title = "choice06 vs choice24 fulldata",
       x = "choice06",
       y = "choice24",)

ggplot(prosocial_data, aes(x = choice06, y = choice24)) +
  geom_count() + 
  labs(title = "choice06 vs choice24 prosocial",
       x = "choice06",
       y = "choice24",)

# 06 vs 33

table(data$choice06, data$choice33)
table(prosocial_data$choice06, prosocial_data$choice33)

ggplot(data, aes(x = choice06, y = choice33)) +
  geom_count() + 
  labs(title = "choice06 vs choice33 fulldata",
       x = "choice06",
       y = "choice33",)

ggplot(prosocial_data, aes(x = choice06, y = choice33)) +
  geom_count() + 
  labs(title = "choice06 vs choice33 prosocial",
       x = "choice06",
       y = "choice33",)

# 15 vs 24

table(data$choice15, data$choice24)
table(prosocial_data$choice15, prosocial_data$choice24)

ggplot(data, aes(x = choice15, y = choice24)) +
  geom_count() + 
  labs(title = "choice15 vs choice24 fulldata",
       x = "choice15",
       y = "choice24",)

ggplot(prosocial_data, aes(x = choice15, y = choice24)) +
  geom_count() + 
  labs(title = "choice15 vs choice24 prosocial",
       x = "choice15",
       y = "choice24",)

# 15 vs 33

table(data$choice15, data$choice33)
table(prosocial_data$choice15, prosocial_data$choice33)

ggplot(data, aes(x = choice15, y = choice33)) +
  geom_count() + 
  labs(title = "choice15 vs choice33 fulldata",
       x = "choice15",
       y = "choice33",)

ggplot(prosocial_data, aes(x = choice15, y = choice33)) +
  geom_count() + 
  labs(title = "choice15 vs choice33 prosocial",
       x = "choice15",
       y = "choice33",)

# 24 vs 33

table(data$choice24, data$choice33)
table(prosocial_data$choice24, prosocial_data$choice33)

ggplot(data, aes(x = choice24, y = choice33)) +
  geom_count() + 
  labs(title = "choice24 vs choice33 fulldata",
       x = "choice24",
       y = "choice33",)

ggplot(prosocial_data, aes(x = choice24, y = choice33)) +
  geom_count() + 
  labs(title = "choice24 vs choice33 prosocial",
       x = "choice24",
       y = "choice33",)

##### Outcome = 4 #####

# 4 vs 26

table(data$choice4, data$choice26)
table(prosocial_data$choice4, prosocial_data$choice26)

ggplot(data, aes(x = choice4, y = choice26)) +
  geom_count() + 
  labs(title = "choice4 vs choice26 fulldata",
       x = "choice4",
       y = "choice26",)

ggplot(prosocial_data, aes(x = choice4, y = choice26)) +
  geom_count() + 
  labs(title = "choice4 vs choice26 prosocial",
       x = "choice4",
       y = "choice26",)

# 4 vs 35

table(data$choice4, data$choice35)
table(prosocial_data$choice4, prosocial_data$choice35)

ggplot(data, aes(x = choice4, y = choice35)) +
  geom_count() + 
  labs(title = "choice4 vs choice35 fulldata",
       x = "choice4",
       y = "choice35",)

ggplot(prosocial_data, aes(x = choice4, y = choice35)) +
  geom_count() + 
  labs(title = "choice4 vs choice35 prosocial",
       x = "choice4",
       y = "choice35",)

# 4 vs 44

table(data$choice4, data$choice44)
table(prosocial_data$choice4, prosocial_data$choice44)

ggplot(data, aes(x = choice4, y = choice44)) +
  geom_count() + 
  labs(title = "choice4 vs choice44 fulldata",
       x = "choice4",
       y = "choice44",)

ggplot(prosocial_data, aes(x = choice4, y = choice44)) +
  geom_count() + 
  labs(title = "choice4 vs choice44 prosocial",
       x = "choice4",
       y = "choice44",)

# 26 vs 35

table(data$choice26, data$choice35)
table(prosocial_data$choice26, prosocial_data$choice35)

ggplot(data, aes(x = choice26, y = choice35)) +
  geom_count() + 
  labs(title = "choice26 vs choice35 fulldata",
       x = "choice26",
       y = "choice35",)

ggplot(prosocial_data, aes(x = choice26, y = choice35)) +
  geom_count() + 
  labs(title = "choice26 vs choice35 prosocial",
       x = "choice26",
       y = "choice35",)

# 26 vs 44

table(data$choice26, data$choice44)
table(prosocial_data$choice26, prosocial_data$choice44)

ggplot(data, aes(x = choice26, y = choice44)) +
  geom_count() + 
  labs(title = "choice26 vs choice44 fulldata",
       x = "choice26",
       y = "choice44",)

ggplot(prosocial_data, aes(x = choice26, y = choice44)) +
  geom_count() + 
  labs(title = "choice26 vs choice44 prosocial",
       x = "choice26",
       y = "choice44",)

# 35 vs 44

table(data$choice35, data$choice44)
table(prosocial_data$choice35, prosocial_data$choice44)

ggplot(data, aes(x = choice35, y = choice44)) +
  geom_count() + 
  labs(title = "choice35 vs choice44 fulldata",
       x = "choice35",
       y = "choice44",)

ggplot(prosocial_data, aes(x = choice35, y = choice44)) +
  geom_count() + 
  labs(title = "choice35 vs choice44 prosocial",
       x = "choice35",
       y = "choice44",)


##### Outcome = 5 #####

# 5 vs 46

table(data$choice5, data$choice46)
table(prosocial_data$choice5, prosocial_data$choice46)

ggplot(data, aes(x = choice5, y = choice46)) +
  geom_count() + 
  labs(title = "choice5 vs choice46 fulldata",
       x = "choice5",
       y = "choice46",)

ggplot(prosocial_data, aes(x = choice5, y = choice46)) +
  geom_count() + 
  labs(title = "choice5 vs choice46 prosocial",
       x = "choice5",
       y = "choice46",)

# 5 vs 55

table(data$choice5, data$choice55)
table(prosocial_data$choice5, prosocial_data$choice55)

ggplot(data, aes(x = choice5, y = choice55)) +
  geom_count() + 
  labs(title = "choice5 vs choice55 fulldata",
       x = "choice5",
       y = "choice55",)

ggplot(prosocial_data, aes(x = choice5, y = choice55)) +
  geom_count() + 
  labs(title = "choice5 vs choice55 prosocial",
       x = "choice5",
       y = "choice55",)

# 46 vs 55

table(data$choice46, data$choice55)
table(prosocial_data$choice46, prosocial_data$choice55)

ggplot(data, aes(x = choice46, y = choice55)) +
  geom_count() + 
  labs(title = "choice46 vs choice55 fulldata",
       x = "choice46",
       y = "choice55",)

ggplot(prosocial_data, aes(x = choice46, y = choice55)) +
  geom_count() + 
  labs(title = "choice46 vs choice55 prosocial",
       x = "choice46",
       y = "choice55",)

##### Outcome = 6 #####

# 6 vs 66

table(data$choice6, data$choice66)
table(prosocial_data$choice6, prosocial_data$choice66)

ggplot(data, aes(x = choice6, y = choice66)) +
  geom_count() + 
  labs(title = "choice6 vs choice66 fulldata",
       x = "choice6",
       y = "choice66",)

ggplot(prosocial_data, aes(x = choice6, y = choice66)) +
  geom_count() + 
  labs(title = "choice6 vs choice66 prosocial",
       x = "choice6",
       y = "choice66",)
