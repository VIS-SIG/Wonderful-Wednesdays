# Background: COPD

Chronic Obstructive Pulmonary Disease (COPD) is a respiratory disease characterised by difficulty breathing and has increased mortality. An exacerbation can be life-threatening if not treated promptly.
Data is based on the RISE study for patients with [moderate COPD](https://www.resmedjournal.com/article/S0954-6111(17)30314-1/fulltext). 

## Primary endpoint 

The primary endpoint is the number of exacerbations during a six month treatment period. Event data - but patients can (and do) have multiple exacerbations. Statistical analysis used a Negative Binomial model.

## COPD treatment 

COPD has two forms of treatments:

**Rescue Treatment**- only used when required

* Short Acting Bronchodilator (SABA)

**Maintenance treatment** - used daily

* Long Acting Bronchodilator (LABA)
* LABA / Inhaled Corticosteroids (ICS) combination
* LABA / ICS / Long Acting Muscarinic Antagonist (LAMA) combination

## RISE study

RISE compares a LABA versus a LABA/ICS combination. RISE used two types of visualisation: Time to first exacerbation (ignoring any subsequent exacerbations) and forest plots of subgroups (no information on number of exacerbations).

Of interest is producing data visualisations that also incorporate information on the number of exacerbations observed.

## Overview of the dataset

The simulated [dataset](https://github.com/VIS-SIG/Wonderful-Wednesdays/tree/master/data/2020/2020-07-08) includes one observation per subject.

Variables:

* AGE_C: Age of Patient - Character
* AGE_N: Age of Patient - Numeric
* AIRFLOW: FEV1 % Predicted Normal (Moderate, Severe, Very Severe)
* ANTHONISEN: Exacerbations whilst on Treatment
* FEV1_RV: FEV1 % Predicted Normal
* GENDER: Gender (Female / Male)
* LNSTUDYDAT: Natural logarithm of Days on Treatment
* MODEL_PREV_EXAC: Exacerbations in previous 12 months - Character
* PREV_EXAC: Exacerbations in previous 12 months - Numeric
* RAND_TRT: Randomised Treatment (LABA ICS/LABA) - Character
* REGION: Region (Non-USA / USA)
* SMOKER: Smoking Status (Current / Ex-smoker)
* STUDY_DAYS_N: Days on Treatment - Numeric
* Study_daysC: Days on Treatment - Character
* subjid - Unique Subject ID - Character
* usubjid - Unique Subject ID - Numeric

## Downloading the data 

To download the raw csv file [click here](https://raw.githubusercontent.com/VIS-SIG/Wonderful-Wednesdays/master/data/2020/2020-07-08/2020-07-08-COPD-PSI-data.csv) and press right click. 

**NOTE** to download a single data set as a csv file, click on the raw button and save the file. The [following link describes the process in further detail](https://stackoverflow.com/questions/4604663/download-single-files-from-github).
