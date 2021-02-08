# Missing data

## Background
Missing data are present in almost any (clinical) data set. For this simulated data set, we assume a clinical phase III trial on Psoriasis. An active treatment arm is compared to a placebo arm. The main interest lies in the comparison of these two arms. (The comparison may be adjusted for age, gender, and BMI). The outcome variable is Pain which was collected on a visual analogue scale (range: 0-100). Greater values mean worse pain. Next to the original values, a dichotomized version of pain is calculated and included in the data set: Pain reduction from baseline of at least 30. Data were collected at baseline and at ten follow-up time points.


The data set can be found [here](./missing_data.csv).

## Challenge
* Show the different patterns of missing values.
* Visualize the potential impact of missing values on the comparison of the two treatment arms.

## Notes
The idea is to check for different missing data patterns:

* Monotone vs. non-montone (Monotone means that once there is a missing value for a specific patient, all follow-up values are also missing).
* Missing completely at random (MCAR).
* Missing at random (MAR); missingness depends on covariates.
* Combinations of the above, etc.

Visualize these patterns and their (potential) impact on the results. Feel free to do some imputation. It might be interesting to look at the impact of the selected imputation strategy on the results.

## Codebook
| Variable | Description | Values |
| --- | --- | --- |
| pain.0 | Pain at baseline | 0-100 |
| pain.1 | Pain at follow-up visit 1 | 0-100 |
| ... | ... | ... |
| pain.10 | Pain at follow-up visit 10 | 0-100 |
| pain.bin.1 | Pain reduction >= 30 at visit 1 | 0-100 |
| ... | ... | ... |
| pain.bin.10 | Pain reduction >= 30 at visit 10 | 0-100 |
| trt | Treatment arm | act (active); pbo (placebo) |
| age | Age | 18-100 |
| bmi | BMI | 18-40 |
| gender | Gender | f (female); m (male) |