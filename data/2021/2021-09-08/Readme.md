# Competing risk example data set

# Study Design  

Observational, multicenter cohort study, in adult patients with PCR-confirmed infection with SARS-CoV-2, who were admitted to one of five collaborating hospitals in the region of Gelderland and North-Brabant (NL) for at least 24 hours between March and May 2020

Recovery is considered a competing risk for mortality and is taken into account as an extra outcome

Cumulative incidence curves were presented side by side for different characteristics

# Goal  

Find a way to visualize the impact of different risk factors (comorbidities and symptoms at admission to hospital) on the risk of death considering the competing risk of recovery.

# Data set

Source paper: [Nijman et al, 2021](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0249231)

The data can be found [here](./journal.pone.0249231.s004.csv).

The data set contains the following variables:


| Variable | Description | Values |
| :--- | :--- | :--- |
| FTIME | Follow-up time in days (hospital admission) | Integers |
| STATUS | Patient status at end of follow-up | 0 (censored), 1 (died), 2 (recovered) |
| COMORB_xxx | Comorbidities | No / Yes |
| SYMPT_xxx | Symptoms reported at admission | 0 (No) / 1 (Yes) / Duration in days |
| MEWS | Modified early warning score | Integers |
| other | Age, Sex, BMI, Lab values, ... | As appropriate |

