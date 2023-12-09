# master script

# load answers
source("C:/Users/Can/Desktop/masterthesis/masterthesis/work/prep/load_answers.R")

# load demographics
source("C:/Users/Can/Desktop/masterthesis/masterthesis/work/prep/load_demographics.R")

# merge answers and demographics
source("C:/Users/Can/Desktop/masterthesis/masterthesis/work/prep/merge_data.R")

# clean dataset
source("C:/Users/Can/Desktop/masterthesis/masterthesis/work/prep/clean_data.R")

prosocial_data <- subset(data, participant.svo_category == "Prosocial")