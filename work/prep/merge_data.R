# This is code to merge the participant demographic data with their responses

answers$id <- answers$intro.1.player.prolificid
demographics$id <- demographics$Participant.id

# Merge the two datasets based on the respective columns
data <- merge(answers, demographics,
                     by.x = "id",
                     by.y = "id",
                     all.x = TRUE)
