# This is code to load the research data from Prolific into R

# Replace the file path with your actual file path
answers_file_path <- "C:\\Users\\Can\\Desktop\\masterthesis\\masterthesis\\data\\UG.csv"

# Read the CSV file into a data frame
answers <- read.csv(answers_file_path)

# Print a summary of the data frame
summary(answers)
