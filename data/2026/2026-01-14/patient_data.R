# R Code to Generate Patient-Level Data with Outcome Variables

set.seed(123)  # For reproducibility

# Function to generate continuous variables matching mean and SD
generate_normal_var <- function(n, mean, sd) {
  rnorm(n, mean = mean, sd = sd)
}

# Function to generate binary/categorical variables matching proportions
generate_categorical <- function(n, probs, labels) {
  sample(labels, size = n, replace = TRUE, prob = probs)
}

# Sample sizes
n_intervention <- 199
n_control <- 199
n_total <- n_intervention + n_control

# Create data frame
set.seed(42)  # Setting seed again for consistency

# Generate Intervention group
intervention_data <- data.frame(
  group = "Intervention",
  age = generate_normal_var(n_intervention, mean = 33.9, sd = 3.2),
  prepregnancy_bmi = generate_normal_var(n_intervention, mean = 24.0, sd = 3.1),
  planned_pregnancy = sample(c("Yes", "No"), n_intervention, replace = TRUE, 
                             prob = c(136/199, 63/199)),
  nulliparous = sample(c("Yes", "No"), n_intervention, replace = TRUE, 
                       prob = c(108/199, 91/199)),
  smoking_vape = sample(c("Yes", "No"), n_intervention, replace = TRUE, 
                        prob = c(38/199, 161/199)),
  education_level = sample(c("High school or less", "University degree", "Postgraduate degree"),
                           n_intervention, replace = TRUE,
                           prob = c(48/199, 112/199, 39/199)),
  employment_status = sample(c("Unemployed", "Employed"), n_intervention, replace = TRUE,
                             prob = c(41/199, 158/199)),
  marital_status = sample(c("Married/cohabiting", "Other"), n_intervention, replace = TRUE,
                          prob = c(176/199, 23/199)),
  race = sample(c("Caucasian", "Other"), n_intervention, replace = TRUE,
                prob = c(182/199, 17/199)),
  adherence_met = sample(c("No", "Yes"), n_intervention, replace = TRUE,
                         prob = c(21/199, 178/199)),
  # OUTCOME VARIABLES
  epds_score = generate_normal_var(n_intervention, mean = 5.1, sd = 3.7),
  epds_12_or_more = sample(c("Yes", "No"), n_intervention, replace = TRUE,
                           prob = c(12/199, 187/199)),
  epds_9_or_more = sample(c("Yes", "No"), n_intervention, replace = TRUE,
                          prob = c(35/199, 164/199)),
  postpartum_depression = sample(c("Yes", "No"), n_intervention, replace = TRUE,
                                 prob = c(13/199, 186/199))
)

# Generate Control group
control_data <- data.frame(
  group = "Control",
  age = generate_normal_var(n_control, mean = 33.8, sd = 3.1),
  prepregnancy_bmi = generate_normal_var(n_control, mean = 23.8, sd = 3.3),
  planned_pregnancy = sample(c("Yes", "No"), n_control, replace = TRUE, 
                             prob = c(140/199, 59/199)),
  nulliparous = sample(c("Yes", "No"), n_control, replace = TRUE, 
                       prob = c(100/199, 99/199)),
  smoking_vape = sample(c("Yes", "No"), n_control, replace = TRUE, 
                        prob = c(34/199, 165/199)),
  education_level = sample(c("High school or less", "University degree", "Postgraduate degree"),
                           n_control, replace = TRUE,
                           prob = c(53/199, 108/199, 38/199)),
  employment_status = sample(c("Unemployed", "Employed"), n_control, replace = TRUE,
                             prob = c(45/199, 154/199)),
  marital_status = sample(c("Married/cohabiting", "Other"), n_control, replace = TRUE,
                          prob = c(174/199, 25/199)),
  race = sample(c("Caucasian", "Other"), n_control, replace = TRUE,
                prob = c(178/199, 21/199)),
  adherence_met = NA,  # Not applicable for control group
  # OUTCOME VARIABLES
  epds_score = generate_normal_var(n_control, mean = 7.1, sd = 5.2),
  epds_12_or_more = sample(c("Yes", "No"), n_control, replace = TRUE,
                           prob = c(40/199, 159/199)),
  epds_9_or_more = sample(c("Yes", "No"), n_control, replace = TRUE,
                          prob = c(63/199, 136/199)),
  postpartum_depression = sample(c("Yes", "No"), n_control, replace = TRUE,
                                 prob = c(22/199, 177/199))
)

# Combine datasets
patient_data <- rbind(intervention_data, control_data)

# Add patient ID
patient_data$patient_id <- 1:n_total

# Reorder columns
patient_data <- patient_data[, c("patient_id", "group", "age", "prepregnancy_bmi", 
                                 "planned_pregnancy", "nulliparous", "smoking_vape",
                                 "education_level", "employment_status", "marital_status",
                                 "race", "adherence_met", "epds_score", "epds_12_or_more",
                                 "epds_9_or_more", "postpartum_depression")]

# View first few rows
head(patient_data, 10)

# Verify the statistics match the table
library(dplyr)

# Summary statistics by group - Baseline characteristics
patient_data %>%
  group_by(group) %>%
  summarise(
    N = n(),
    Age_mean = mean(age),
    Age_sd = sd(age),
    BMI_mean = mean(prepregnancy_bmi),
    BMI_sd = sd(prepregnancy_bmi),
    Planned_pregnancy_n = sum(planned_pregnancy == "Yes"),
    Planned_pregnancy_pct = mean(planned_pregnancy == "Yes") * 100,
    Nulliparous_n = sum(nulliparous == "Yes"),
    Nulliparous_pct = mean(nulliparous == "Yes") * 100,
    Smoking_n = sum(smoking_vape == "Yes"),
    Smoking_pct = mean(smoking_vape == "Yes") * 100
  )

# OUTCOME STATISTICS - TABLE 3
outcome_summary <- patient_data %>%
  group_by(group) %>%
  summarise(
    N = n(),
    # EPDS ≥ 12
    EPDS_12_n = sum(epds_12_or_more == "Yes"),
    EPDS_12_pct = mean(epds_12_or_more == "Yes") * 100,
    # EPDS ≥ 9
    EPDS_9_n = sum(epds_9_or_more == "Yes"),
    EPDS_9_pct = mean(epds_9_or_more == "Yes") * 100,
    # EPDS score
    EPDS_score_mean = mean(epds_score),
    EPDS_score_sd = sd(epds_score),
    # Postpartum depression
    PPD_n = sum(postpartum_depression == "Yes"),
    PPD_pct = mean(postpartum_depression == "Yes") * 100
  )

print("OUTCOME SUMMARY (TABLE 3):")
print(outcome_summary)

# Calculate Risk Ratios and Mean Difference
intervention_subset <- patient_data %>% filter(group == "Intervention")
control_subset <- patient_data %>% filter(group == "Control")

# RR for EPDS ≥ 12
rr_epds12 <- (sum(intervention_subset$epds_12_or_more == "Yes")/n_intervention) / 
  (sum(control_subset$epds_12_or_more == "Yes")/n_control)

# RR for EPDS ≥ 9
rr_epds9 <- (sum(intervention_subset$epds_9_or_more == "Yes")/n_intervention) / 
  (sum(control_subset$epds_9_or_more == "Yes")/n_control)

# Mean Difference in EPDS score
md_epds <- mean(intervention_subset$epds_score) - mean(control_subset$epds_score)

# RR for Postpartum Depression
rr_ppd <- (sum(intervention_subset$postpartum_depression == "Yes")/n_intervention) / 
  (sum(control_subset$postpartum_depression == "Yes")/n_control)

cat("\n=== CALCULATED RISK RATIOS AND MEAN DIFFERENCES ===\n")
cat("RR for EPDS ≥ 12:", round(rr_epds12, 2), "(Expected: 0.30)\n")
cat("RR for EPDS ≥ 9:", round(rr_epds9, 2), "(Expected: 0.56)\n")
cat("Mean Difference in EPDS score:", round(md_epds, 2), "(Expected: -2.00)\n")
cat("RR for Postpartum Depression:", round(rr_ppd, 2), "(Expected: 0.59)\n")

# Education level breakdown
cat("\n=== EDUCATION LEVEL ===\n")
print(table(patient_data$group, patient_data$education_level))

# Employment status
cat("\n=== EMPLOYMENT STATUS ===\n")
print(table(patient_data$group, patient_data$employment_status))

# Marital status
cat("\n=== MARITAL STATUS ===\n")
print(table(patient_data$group, patient_data$marital_status))

# Race
cat("\n=== RACE ===\n")
print(table(patient_data$group, patient_data$race))

# Adherence (Intervention group only)
cat("\n=== ADHERENCE (Intervention group only) ===\n")
print(table(patient_data$adherence_met[patient_data$group == "Intervention"]))

# Export to CSV if needed
# write.csv(patient_data, "patient_level_data_with_outcomes.csv", row.names = FALSE)