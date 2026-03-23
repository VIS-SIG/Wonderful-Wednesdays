# ============================================================
# Simulation of Patient-Level Data: Make Better Choices 2 RCT
# Based on: abstract + high-resolution plots (mbc2_stress.jpg,
#           mbc2_sleep.jpg)
# Design: 2 arms x 4 time points (Baseline, 3-, 6-, 9-months)
# n = 212 participants (76.4% female, 59% non-white, mean age 40.8)
# ============================================================
#
# TARGET MEANS (read directly from high-res plots):
#
# STRESS (Predicted Average Daily Stress, 0–10 scale):
#   Time        Sleep/Stress   Diet/Activity
#   Baseline       3.10           3.60
#   3-month        1.05           1.70
#   6-month        1.05           1.80
#   9-month        1.00           1.85
#
# SLEEP (Predicted Sleep Duration, minutes):
#   Time        Sleep/Stress   Diet/Activity
#   Baseline      390            405
#   3-month       468            420
#   6-month       493            420
#   9-month       483            433
#
# ERROR BARS (approx ±SE from plots):
#   Stress: ~±0.25 across all time points
#   Sleep:  ~±13 min (95% CI bars span ~50 min → SE ~ 13 min)
# ============================================================

library(tidyverse)
library(nlme)      # linear mixed models (lme)
library(emmeans)   # marginal means for model checking

set.seed(2025)

# ------------------------------------------------------------
# 1. STUDY PARAMETERS
# ------------------------------------------------------------
n_total   <- 212
n_per_arm <- 106
time_pts  <- c(0, 3, 6, 9)
time_labs <- c("Baseline", "3-month", "6-month", "9-month")

# --- Stress: target predicted means (from plot) ---
stress_mu_ss <- c(3.10, 1.05, 1.05, 1.00)   # Sleep/Stress arm
stress_mu_da <- c(3.60, 1.70, 1.80, 1.85)   # Diet/Activity arm

# --- Sleep: target predicted means (from plot, minutes) ---
sleep_mu_ss  <- c(390, 468, 493, 483)        # Sleep/Stress arm
sleep_mu_da  <- c(405, 420, 420, 433)        # Diet/Activity arm

# --- Variance components ---
# Stress: target SE ~ 0.25 → SD/sqrt(106) = 0.25 → total SD ~ 2.57
#   Decompose: sigma_u^2 + sigma_e^2 = 2.57^2 ≈ 6.6
sigma_u_stress <- 2.0    # between-person random intercept SD
sigma_e_stress <- 1.65   # within-person residual SD
# sqrt(2.0^2 + 1.65^2) ≈ 2.59 → SE ~ 0.25 ✓

# Sleep: error bars span ~50 min → likely 95% CI → SE ~ 13 min
#   → total SD ~ 13 * sqrt(106) ~ 134 min
#   Decompose: sigma_u^2 + sigma_e^2 = 134^2 ≈ 17,956
sigma_u_sleep  <- 100    # between-person random intercept SD
sigma_e_sleep  <- 88     # within-person residual SD
# sqrt(100^2 + 88^2) ≈ 133 → SE ~ 12.9 min ✓

# ------------------------------------------------------------
# 2. SIMULATE PARTICIPANT DEMOGRAPHICS
# ------------------------------------------------------------
participants <- tibble(
  id       = 1:n_total,
  arm      = rep(c("Sleep/Stress", "Diet/Activity"), each = n_per_arm),
  female   = rbinom(n_total, 1, 0.764),
  nonwhite = rbinom(n_total, 1, 0.590),
  age      = round(rnorm(n_total, mean = 40.8, sd = 10), 1)
)

# ------------------------------------------------------------
# 3. SIMULATE LONGITUDINAL DATA (long format)
# ------------------------------------------------------------

# Random intercepts (one per person)
random_effects <- tibble(
  id       = 1:n_total,
  u_stress = rnorm(n_total, 0, sigma_u_stress),
  u_sleep  = rnorm(n_total, 0, sigma_u_sleep)
)

sim_long <- expand_grid(id = 1:n_total, time = time_pts) %>%
  left_join(participants,   by = "id") %>%
  left_join(random_effects, by = "id") %>%
  mutate(
    time_index = match(time, time_pts),

    # --- Stress ---
    mu_stress  = if_else(
      arm == "Sleep/Stress",
      stress_mu_ss[time_index],
      stress_mu_da[time_index]
    ),
    stress_raw = mu_stress + u_stress + rnorm(n(), 0, sigma_e_stress),
    stress     = pmin(pmax(round(stress_raw, 2), 0), 10),  # clamp [0, 10]

    # --- Sleep ---
    mu_sleep   = if_else(
      arm == "Sleep/Stress",
      sleep_mu_ss[time_index],
      sleep_mu_da[time_index]
    ),
    sleep_raw  = mu_sleep + u_sleep + rnorm(n(), 0, sigma_e_sleep),
    sleep      = pmin(pmax(round(sleep_raw, 1), 120), 720), # clamp [120, 720]

    # Factor labels
    time_f = factor(time, levels = time_pts, labels = time_labs),
    arm    = factor(arm, levels = c("Sleep/Stress", "Diet/Activity"))
  ) %>%
  select(id, arm, female, nonwhite, age, time, time_f, stress, sleep)

# ------------------------------------------------------------
# 4. VERIFY SUMMARY STATISTICS AGAINST PLOT VALUES
# ------------------------------------------------------------
cat("=== STRESS: Simulated Means vs. Plot Targets ===\n")
stress_check <- sim_long %>%
  group_by(arm, time_f) %>%
  summarise(
    sim_mean = round(mean(stress), 2),
    sim_se   = round(sd(stress) / sqrt(n()), 3),
    .groups  = "drop"
  )

stress_targets <- tibble(
  arm    = factor(rep(c("Sleep/Stress", "Diet/Activity"), each = 4),
                  levels = c("Sleep/Stress", "Diet/Activity")),
  time_f = factor(rep(time_labs, 2), levels = time_labs),
  target = c(stress_mu_ss, stress_mu_da)
)

left_join(stress_check, stress_targets, by = c("arm", "time_f")) %>%
  mutate(diff = round(sim_mean - target, 2)) %>%
  print()

cat("\n=== SLEEP: Simulated Means vs. Plot Targets (minutes) ===\n")
sleep_check <- sim_long %>%
  group_by(arm, time_f) %>%
  summarise(
    sim_mean = round(mean(sleep), 1),
    sim_se   = round(sd(sleep) / sqrt(n()), 1),
    .groups  = "drop"
  )

sleep_targets <- tibble(
  arm    = factor(rep(c("Sleep/Stress", "Diet/Activity"), each = 4),
                  levels = c("Sleep/Stress", "Diet/Activity")),
  time_f = factor(rep(time_labs, 2), levels = time_labs),
  target = c(sleep_mu_ss, sleep_mu_da)
)

left_join(sleep_check, sleep_targets, by = c("arm", "time_f")) %>%
  mutate(diff = round(sim_mean - target, 1)) %>%
  print()

cat("\n=== Change from Baseline (Baseline to 3-month) ===\n")
bl <- sim_long %>%
  filter(time == 0) %>%
  group_by(arm) %>%
  summarise(bl_stress = mean(stress), bl_sleep = mean(sleep))

sim_long %>%
  filter(time == 3) %>%
  group_by(arm) %>%
  summarise(fu_stress = mean(stress), fu_sleep = mean(sleep)) %>%
  left_join(bl, by = "arm") %>%
  transmute(
    arm,
    stress_change = round(fu_stress - bl_stress, 2),
    sleep_change  = round(fu_sleep  - bl_sleep,  1)
  ) %>%
  print()

cat("\nAbstract targets: Stress change D/A = -1.68, S/S = -2.08\n")
cat("Abstract targets: Sleep  change D/A = +26.39 min, S/S = +92.65 min\n")

# ------------------------------------------------------------
# 5. LINEAR MIXED MODELS
# Note: models use time_f (factor) so emmeans can reference each
# time point directly without extrapolation issues.
# ------------------------------------------------------------
cat("\n=== LME: Stress (arm x time_f) ===\n")
lme_stress <- lme(
  stress ~ arm * time_f,
  random = ~ 1 | id,
  data   = sim_long,
  method = "ML"
)
print(summary(lme_stress)$tTable)

cat("\n=== LME: Sleep (arm x time_f) ===\n")
lme_sleep <- lme(
  sleep ~ arm * time_f,
  random = ~ 1 | id,
  data   = sim_long,
  method = "ML"
)
print(summary(lme_sleep)$tTable)

# ------------------------------------------------------------
# 6. REPRODUCE PLOTS (matching original style)
# ------------------------------------------------------------

# Use model-predicted marginal means + SE (mirrors "predicted" values
# shown in the original paper figures)
emm_stress <- emmeans(lme_stress, ~ arm * time_f) %>%
  as_tibble() %>%
  rename(mean_val = emmean, se_val = SE) %>%
  mutate(outcome = "stress")

emm_sleep <- emmeans(lme_sleep, ~ arm * time_f) %>%
  as_tibble() %>%
  rename(mean_val = emmean, se_val = SE) %>%
  mutate(outcome = "sleep")

make_plot <- function(df, y_label, y_limits, y_breaks, title_str) {
  df <- df %>%
    mutate(time_f = factor(time_f, levels = time_labs))

  ggplot(df, aes(x = time_f, y = mean_val,
                 group = arm, linetype = arm, shape = arm)) +
    geom_line(linewidth = 0.9) +
    geom_point(size = 3.5) +
    geom_errorbar(
      aes(ymin = mean_val - se_val, ymax = mean_val + se_val),
      width = 0.12, linewidth = 0.7
    ) +
    scale_linetype_manual(
      values = c("Sleep/Stress" = "solid", "Diet/Activity" = "dashed"),
      labels = c("Sleep/Stress" = "\u2014 Sleep/Stress",
                 "Diet/Activity" = "- - Diet/Activity")
    ) +
    scale_shape_manual(
      values = c("Sleep/Stress" = 16, "Diet/Activity" = 15),
      labels = c("Sleep/Stress" = "\u2014 Sleep/Stress",
                 "Diet/Activity" = "- - Diet/Activity")
    ) +
    scale_y_continuous(limits = y_limits, breaks = y_breaks,
                       expand = expansion(mult = c(0.02, 0.05))) +
    labs(x = "Time", y = y_label,
         linetype = NULL, shape = NULL) +
    theme_classic(base_size = 13) +
    theme(
      legend.position    = "bottom",
      legend.direction   = "horizontal",
      legend.key.width   = unit(1.8, "cm"),
      legend.text        = element_text(size = 11),
      axis.title         = element_text(size = 12),
      panel.grid.major.y = element_line(colour = "grey88", linewidth = 0.4)
    )
}

p_stress <- make_plot(
  filter(emm_stress, TRUE),
  y_label  = "Predicted Average Daily Stress",
  y_limits = c(0, 4),
  y_breaks = seq(0, 4, 1),
  title_str = "Stress"
)

p_sleep <- make_plot(
  filter(emm_sleep, TRUE),
  y_label  = "Predicted Sleep Duration (Minutes)",
  y_limits = c(350, 555),
  y_breaks = seq(350, 550, 50),
  title_str = "Sleep"
)

ggsave("plot_stress.png", p_stress,
       width = 6, height = 5, dpi = 180)
ggsave("plot_sleep.png",  p_sleep,
       width = 6, height = 5, dpi = 180)

cat("\nPlots saved \n")

# ------------------------------------------------------------
# 7. SAVE SIMULATED DATASET
# ------------------------------------------------------------
write_csv(sim_long, "simulated_MBC2_data.csv")
cat("Dataset saved: simulated_MBC2_data.csv\n")
cat("Rows:", nrow(sim_long),
    "| Participants:", n_distinct(sim_long$id), "\n")
