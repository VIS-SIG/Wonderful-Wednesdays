# Fraud in clinical trials

## The background

Clinical trial fraud involving fabricated patients is a well-documented problem in research integrity. Statistical methods, including data visualisation, can be a first line of detection, flagging sites for deeper investigation. A simulated dataset is provided for a randomised, controlled multi-centre study studying an active treatment versus placebo in blood pressure reduction. 
One site contains data that is fraudulent.

## The challenge

1. Explore the data using data visualisation and discover which site contains fabricated data
2. Use one or more data visualisations to provide convincing evidence to influence the study team to conduct further investigation

## Further Information

Fabricated data often has the following properties:
* Digit preference: fraudsters often favour round numbers
* Variability: fraudsters unconsciously produce data that is too consistent
* Missing data: fraudsters often underestimate the drop-out rate or level of missing data
* Correlation: fabricated longitudinal data often overestimates the correlation between visits  
* Visit regularity: visit dates are often more variable in real data compared to fabricated data

## The data

A standard ADVS [data](../2026-05-13/ADVS.csv) format is provided, including the following key variables:

| Variable Name | Variable Label                           |
|---------------|------------------------------------------|
| USUBJID       | Subject ID                               |
| SITEID        | Site ID (important for identification)   |
| TRT01P(N)     | Treatment group                          |
| ADT           | Visit date                               |
| AVISIT(N)     | Visit ID                                 |
| PARAMCD       | DIABP or SYSBP (Blood pressure)          |
| AVAL          | Result (measured value)                  |
| BASE          | Baseline value                           |
| CHG           | Change from Baseline                     |
| PCHG          | % Change from Baseline                   |


``` {r, eval=FALSE}
# load data
ADVS <- read_csv("https://raw.githubusercontent.com/VIS-SIG/Wonderful-Wednesdays/master/data/2026/2026-05-13/ADVS.csv")

```
