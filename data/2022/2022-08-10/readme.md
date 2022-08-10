# Prediction of health status (EQ-5D)

## Background

The data is based on a study to assess the health status in patients with coronary heart diseases (see Ose et al., 2012). The research question was: what factors are associated with health
status in usual primary care?

The original data included 2,656 patients with 14 (patient and practice) characteristics (with clustered data structure). The outcome was EQ-5D VAS scale (Health related quality of life; range: [0; 1]). The data set for this challenge is a sub-sample of patients and variables and it is simulated data.

## Challenge

The challenge is to fit a model to predict the health status (EQ-5D) based on all other available variables and to visualize the results. Feel free to highlight specific aspects of the data visually. You may want to focus on the questions, such as:

- What does the impact of body mass index on the health status look like as compared to the impact of the number of conditions?
- Which predictors would need to be different to reach an increase in the health status by a specific amount?

## Data set

- Sample size: N = 150
- Outcome: EQ-5D (ranging between 0 and 1, the higher the better the life quality)
- Predictors:
  - age, gender
  - marital status (mar.status; 0: single, 1: married)
  - Years of education (edu, 0: ≤ 9 years, 1: > 9 years)
  - Number of conditions (n.cond)
  - Body mass index (bmi, 0: < 30, 1: ≥ 30)

The data set can be found [here](EQ5D.csv).

## Reference

Ose, D., Rochon, J., Campbell, S.M., Wensing, M., van Lieshout, J., Uhlmann, L., Freund, T., Szecsenyi, J., Ludt. S. (2012): Secondary Prevention in Patients with Coronary Heart Diseases: What Factors Are Associated with Health Status in Usual Primary Care? PLoS ONE 7: e51726.