# This is code to load the demographic data of participants from prolific into R

# Replace the file path with your actual file path
demographics_file_path <- "data/Demographic_UG_full.csv"

# Read the CSV file into a data frame
demographics <- read.csv(demographics_file_path)

# Print a summary of the data frame
summary(demographics)
