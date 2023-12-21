setwd("C:/Users/Can/Desktop/masterthesis")

data <- read.csv("data/full_data.csv")

prosocial_data <- read.csv("data/prosocial_data.csv")

# run logistic regression

##### test for any effects of sociodemographic variables on outcomes

summary(glm(choice00 ~ participant.svo_category + Age + Sex + choice0, data = data, family = "binomial"))

##### for single proposer outcomes #####

model_results_list_single <- list()

for (i in 0:4) {
  
  formula <- as.formula(paste0("choice",i, "~ participant.svo_category + Age + Sex"))
  
  model <- glm(formula, data = data, family = "binomial")
  
  model_results_list_single[[paste0("choice",i)]] <- summary(model)
  
}

##### for multi proposer outcomes #####

# choice 00 to choice 06

model_results_list_00_06 <- list()

for (i in 0:0) {
  for (j in 0:6) {
  
  formula <- as.formula(paste0("choice",i,j, "~ participant.svo_category + Age + Sex"))
  
  model <- glm(formula, data = data, family = "binomial")
  
  model_results_list_00_06[[paste0("choice",i,j)]] <- summary(model)
  
  }
}

# choice 11 to choice 16

model_results_list_11_16 <- list()

for (i in 1:1) {
  for (j in 1:6) {
    
    formula <- as.formula(paste0("choice",i,j, "~ participant.svo_category + Age + Sex"))
    
    model <- glm(formula, data = data, family = "binomial")
    
    model_results_list_11_16[[paste0("choice",i,j)]] <- summary(model)
    
  }
}

# choice 22 to choice 26

model_results_list_22_26 <- list()

for (i in 2:2) {
  for (j in 2:6) {
    
    formula <- as.formula(paste0("choice",i,j, "~ participant.svo_category + Age + Sex"))
    
    model <- glm(formula, data = data, family = "binomial")
    
    model_results_list_22_26[[paste0("choice",i,j)]] <- summary(model)
    
  }
}

# choice 33 to choice 36

model_results_list_33_36 <- list()

for (i in 3:3) {
  for (j in 3:6) {
    
    formula <- as.formula(paste0("choice",i,j, "~ participant.svo_category + Age + Sex"))
    
    model <- glm(formula, data = data, family = "binomial")
    
    model_results_list_33_36[[paste0("choice",i,j)]] <- summary(model)
    
  }
}

# choice 44 to choice 46

model_results_list_44_46 <- list()

for (i in 4:4) {
  for (j in 4:6) {
    
    formula <- as.formula(paste0("choice",i,j, "~ participant.svo_category + Age + Sex"))
    
    model <- glm(formula, data = data, family = "binomial")
    
    model_results_list_44_46[[paste0("choice",i,j)]] <- summary(model)
    
  }
}

# choice 55 to choice 56

model_results_list_55_56 <- list()

for (i in 5:5) {
  for (j in 5:6) {
    
    formula <- as.formula(paste0("choice",i,j, "~ participant.svo_category + Age + Sex"))
    
    model <- glm(formula, data = data, family = "binomial")
    
    model_results_list_55_56[[paste0("choice",i,j)]] <- summary(model)
    
  }
}

# choice 66 to choice 66

model_results_list_66_66 <- list()

for (i in 6:6) {
  for (j in 6:6) {
    
    formula <- as.formula(paste0("choice",i,j, "~ participant.svo_category + Age + Sex"))
    
    model <- glm(formula, data = data, family = "binomial")
    
    model_results_list_66_66[[paste0("choice",i,j)]] <- summary(model)
    
  }
}

##### View results #####

print(model_results_list_single$choice0)
print(model_results_list_single$choice1)
print(model_results_list_single$choice2)
print(model_results_list_single$choice3) # gender effect
print(model_results_list_single$choice4) # gender effect

print(model_results_list_00_06$choice00)
print(model_results_list_00_06$choice01)
print(model_results_list_00_06$choice02)
print(model_results_list_00_06$choice03)
print(model_results_list_00_06$choice04)
print(model_results_list_00_06$choice05)
print(model_results_list_00_06$choice06)

print(model_results_list_11_16$choice11)
print(model_results_list_11_16$choice12)
print(model_results_list_11_16$choice13)
print(model_results_list_11_16$choice14)
print(model_results_list_11_16$choice15)
print(model_results_list_11_16$choice16)

print(model_results_list_22_26$choice22)
print(model_results_list_22_26$choice23)
print(model_results_list_22_26$choice24)
print(model_results_list_22_26$choice25)
print(model_results_list_22_26$choice26) # gender effect

print(model_results_list_33_36$choice33)
print(model_results_list_33_36$choice34)
print(model_results_list_33_36$choice35)
print(model_results_list_33_36$choice36)

print(model_results_list_44_46$choice44)
print(model_results_list_44_46$choice45)
print(model_results_list_44_46$choice46)

print(model_results_list_55_56$choice55)
print(model_results_list_55_56$choice56)

print(model_results_list_66_66$choice66)
