setwd("C:/Users/Can/Desktop/masterthesis")

data <- read.csv("B - data/full_data.csv")

prosocial_data <- subset(data, participant.svo_category == "Prosocial")

# Script to run McNemar-Bowker test of Matrix symmetry on minimum tolerable offer by groups versus minimum tolerable offer by individuals

# generate minimum tolerance variable

data$mintol_go <- ifelse(data$choice00 == 1, 0,
                         ifelse(data$choice01 == 1 , 0.5, 
                                ifelse(data$choice02 == 1 | data$choice11 == 1, 1, 
                                       ifelse(data$choice03 == 1 | data$choice12 == 1, 1.5, 
                                              ifelse(data$choice04 == 1 | data$choice13 == 1 | data$choice22 == 1, 2, NA)))))

data$mintol_io <- ifelse(data$choice0 == 1, 0, 
                         ifelse(data$choice1 == 1, 1, 
                                ifelse(data$choice2 == 1, 2, NA)))

table(data$mintol_io)
table(data$mintol_go)
table(data$mintol_go, data$mintol_io)

# get counts of inconsistent observations, where low-offer tolerace is higher for group offers

mcn_data <- as.matrix(table(data$mintol_go, data$mintol_io))

# remove uncomparable observations (those where mto = decimal number)


mcn <- matrix(c(mcn_data[1,1], mcn_data[1,2], mcn_data[1,3],
                mcn_data[3,1], mcn_data[3,2], mcn_data[3,3],
                mcn_data[5,1], mcn_data[5,2], mcn_data[5,3]), nrow = 3, byrow = TRUE)

mcnemar.test(mcn, correct = FALSE)

# McNemar test for outcome = 0

mcnemar.test(table(
  data$choice0, 
  data$choice00
), correct = FALSE)