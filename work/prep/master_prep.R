# master script
setwd("C:/Users/Can/Desktop/masterthesis/")

##### load answers #####

answers_file_path <- "data/UG.csv"

# Read the CSV file into a data frame
answers <- read.csv(answers_file_path)



##### load demographics #####

demographics_file_path <- "data/Demographic_UG_full.csv"

# Read the CSV file into a data frame
demographics <- read.csv(demographics_file_path)



##### merge answers and demographics #####

answers$id <- answers$intro.1.player.prolificid
demographics$id <- demographics$Participant.id

# Merge the two datasets based on the respective columns
data <- merge(answers, demographics,
              by.x = "id",
              by.y = "id",
              all.x = TRUE)



##### clean dataset #####

# Drop rows where the ID variable is empty
data <- subset(data, !is.na(id) & id != "")

library(tidyverse)

# Assuming your dataframe is named your_dataframe
data %>%
  summarise(across(ends_with("choice1"), sum, na.rm = TRUE))


# cleaning choice0 to choice4
for (i in 0:4) {
  col_name <- paste0("choice", i)
  data <- data %>%
    mutate(!!col_name := rowSums(select(., ends_with(col_name)), na.rm = TRUE))
}

# cleaning choice00 to choice06
for (i in 0:6) {
  col_name <- paste0("choice", sprintf("%02d", i))
  data <- data %>%
    mutate(!!col_name := rowSums(select(., ends_with(col_name)), na.rm = TRUE))
}

# cleaning choice11 to choice16
for (i in 11:16) {
  col_name <- paste0("choice", i)
  data <- data %>%
    mutate(!!col_name := rowSums(select(., ends_with(col_name)), na.rm = TRUE))
}

# cleaning choice22 to choice26
for (i in 22:26) {
  col_name <- paste0("choice", i)
  data <- data %>%
    mutate(!!col_name := rowSums(select(., ends_with(col_name)), na.rm = TRUE))
}

# cleaning choice33 to choice36
for (i in 33:36) {
  col_name <- paste0("choice", i)
  data <- data %>%
    mutate(!!col_name := rowSums(select(., ends_with(col_name)), na.rm = TRUE))
}

# cleaning choice44 to choice46
for (i in 44:46) {
  col_name <- paste0("choice", i)
  data <- data %>%
    mutate(!!col_name := rowSums(select(., ends_with(col_name)), na.rm = TRUE))
}

# cleaning choice55 to choice56
for (i in 55:56) {
  col_name <- paste0("choice", i)
  data <- data %>%
    mutate(!!col_name := rowSums(select(., ends_with(col_name)), na.rm = TRUE))
}

# cleaning choice66 to choice66
for (i in 66:66) {
  col_name <- paste0("choice", i)
  data <- data %>%
    mutate(!!col_name := rowSums(select(., ends_with(col_name)), na.rm = TRUE))
}




# drop variables that are unnecessary

data <- data %>%
  select(-starts_with("g_ug_mp"))

data <- data %>%
  select(-starts_with("g_ug_sp"))

data <- data %>%
  select(-starts_with("session."))

data <- data %>%
  select(-ends_with("player.angle"))

data <- data %>%
  select(-ends_with("player.role"))

data <- data %>%
  select(-ends_with("player.payoff"))

data <- data %>%
  select(-ends_with("player.category"))

data <- data %>%
  select(-ends_with("player.id_in_group"))

data <- data %>%
  select(-ends_with("group.id_in_subsession"))

data <- data %>%
  select(-ends_with("subsession.round_number"))

data <- data %>%
  select(-c(
    "Completion.code", 
    "Archived.at", 
    "Participant.id",
    "Submission.id",
    "Status",
    "Reviewed.at",
    "Employment.status",
    "Student.status",
    "Language",
    "Nationality",
    "Country.of.residence",
    "Country.of.birth",
    "Ethnicity.simplified",
    "Total.approvals",
    "contact.1.player.email",
    "participant.visited",
    "participant._current_page_name",
    "participant._current_app_name",
    "participant._max_page_index",
    "participant._index_in_pages",
    "participant.code",
    "participant.id_in_session",
    "intro.1.player.prolificid",
    "participant.payoff",
    "participant.mturk_assignment_id",
    "participant.mturk_worker_id",
    "participant.label"
  ))

# Filter out people who did not finish
data <- data %>%
  filter(participant.progress == 57)

# clean data where consent was revoked
data <- data %>%
  mutate_all(~ ifelse(. == "CONSENT_REVOKED", NA, .))

# clean data that expired
data <- data %>%
  mutate_all(~ ifelse(. == "DATA_EXPIRED", NA, .))

# format Age as numeric
data$Age <- as.numeric(data$Age)

# Filter out people who failed the test rounds
data <- data %>%
  filter(ac_ug_sp.1.player.proposer_payoff == 3)

# Filter out people who failed the test rounds
data <- data %>%
  filter(ac_ug_sp.1.player.responder_payoff == 1)

# Filter out people who failed the test rounds
data <- data %>%
  filter(ac_ug_mp.1.player.responder_payoff == 2)

# Filter out people who failed the test rounds
data <- data %>%
  filter(ac_ug_mp.1.player.proposer1_payoff == 2)

# Filter out people who failed the test rounds
data <- data %>%
  filter(ac_ug_mp.1.player.proposer2_payoff == 2)



##### export data #####

prosocial_data <- subset(data, participant.svo_category == "Prosocial")

# save prepared dataset
write.csv(data, "data/full_data.csv", row.names = FALSE)

write.csv(prosocial_data, "data/prosocial_data.csv", row.names = FALSE)