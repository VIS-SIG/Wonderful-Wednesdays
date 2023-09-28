## Background

- Leverage visual analytics to identify data issues
- We will consider 4 questions answered on a Likert scale data
  - 5 rating levels (Strongly disagree, Disagree, Neutral, Agree, Strongly Agree) coded as 1, 2, 3, 4 and 5, respectively
  - The higher the number the better
  - 400 Subjects (200 active, 200 control)

## Data

Contains the following variables:

- SUBJID: Unique subject identifier to the 400 subjects
- TRT: Either "Active" (200 patients) or "Control" (200 patients)
- Q1-Q4: results from 4 questionnaire's evaluated on the Likert scale
- AGE: age of the patient
- SEX:  sex of the patient

The data can be found [here](PROdata.csv).

## Challenge

- Use exploratory visual analytics to:
  - Use data visualization to identify data points that are not plausible
  - Use data visualization to identify the site where patients were given the wrong instructions and they interpreted the scale wrong and scored 1 as 5, 5 as 1, 2 as 4 and 4 as 2.

- Bonus: use explanatory visual communication to show the treatment difference before and after correcting for data issues.  This might be good opportunity for a data scrolling story or an analytical notebook where you can explain the issue and show the correction.