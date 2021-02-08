# Missing data

## Background
Missing data are present in almost any (clinical) data set. For this simulated data set, we assume a clinical phase III trial on Psoriasis. An active treatment arm is compared to a placebo arm. The main interest lies in the comparison of these two arms. The comparison is adjusted for age, gender, and BMI. The outcome variable is Pain which was collected on a visual analogue scale (range: 0-100). The higher the value the higher the pain. Data were collected at baseline plus ten follow-up time points.


The data set can be found [here](./missing_data.csv).

## Challenge
* Show the different patterns of missing values.
* Visualize the potential impact of missing values.

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