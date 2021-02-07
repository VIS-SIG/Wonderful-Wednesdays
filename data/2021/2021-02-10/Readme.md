# Missing data

# Background
Missing data are present in almost any (clinical) data set. For this simulated data set, we assume a clinical phase III trial on Psoriasis. An active treatment arm is compared to a placebo arm. The main interest lies in the comparison of these two arms. The comparison is adjusted for age, gender, and BMI. The outcome variable is Pain which was collected on a visual analogue scale (range: 0-100). The higher the value the higher the pain. Data were collected at baseline plus ten follow-up time points.


The data set can be found [here](./<filename>).

# Challenge
* Show the different patterns of missing values.
* Visualize the potential impact of missing values.

# Codebook
| Variable | Description | Values |
| --- | --- | --- |
| Pain0 | Pain at baseline | 0-10 |
| Pain1 | Pain at follow-up visit 1 | 0-10 |
| ... | ... | ... |
| Pain10 | Pain at follow-up visit 10 | 0-10 |
| TRT | Treatment | Active; Placebo |
| age | Age | 18-100 |
| gender | Gender | F (female); M (male) |
| BMI | BMI | 20-50 |