setwd("C:/Users/Can/Desktop/masterthesis")

data <- read.csv("data/full_data.csv")

prosocial_data <- read.csv("data/prosocial_data.csv")

# run inferential tests to prove that group offers are accepted more often than individual offers

# calculate measures for acceptance rates of individual and group offers

# calculate total number of group offers accepted

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

# calculate percentage of group offers accepted

data$go_perc <- data$go_count / 28

# calculate total number of individual offers accepted

data$io_count <- rowSums(data[, c("choice0",
                                  "choice1",
                                  "choice2",
                                  "choice3",
                                  "choice4")] == 1)

# calculate percentage of individual offers accepted

data$io_perc <- data$io_count / 5

# test normality distributions

shapiro.test(data$io_perc) # normality rejected

shapiro.test(data$go_perc) # normality rejected

shapiro.test(data$go_perc - data$io_perc) # normality rejected

# use wilcoxon rank sum test because normality assumption is not fulfilled

wilcox.test(data$go_perc, data$io_perc) # group offer acceptance rate is different from individual offer acceptance rate

wilcox.test(data$go_perc, data$io_perc, alternative = "greater") # group offer acceptance rate is bigger than individual offer acceptance rate

