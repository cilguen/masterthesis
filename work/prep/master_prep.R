# master script
setwd("C:/Users/Can/Desktop/masterthesis/")
# load answers
source("work/prep/load_answers.R")

# load demographics
source("work/prep/load_demographics.R")

# merge answers and demographics
source("work/prep/merge_data.R")

# clean dataset
source("work/prep/clean_data.R")

prosocial_data <- subset(data, participant.svo_category == "Prosocial")

# save prepared dataset
write.csv(data, "data/full_data.csv", row.names = FALSE)

write.csv(prosocial_data, "data/prosocial_data.csv", row.names = FALSE)