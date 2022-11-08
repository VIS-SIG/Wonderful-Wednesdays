# Adverse Event data of COVID-19 vaccination in 2021
## [VAERS] (http://www.vaers.hhs.gov) Vaccine Adverse Event Reporting System
The data described below is an excerpt of the official VAERS data created by US Food and Drug Administration (FDA) and Centers for Disease Control and Prevention (CDC) that may be associated with vaccines.
# Dataset description 
There will be one row per reported symptom in the data set. The data set contains the following variables:
* VAERS_ID: Subject Identifier
* CAGE_YR: Age of the vaccine recipient in years
* SEX: Sex of the vaccine recipient (M/F)
* VAX_DATE: Vaccination date - deleted
* ONSET_DATE: Symptom onset date - deleted
* DIED: "Y" if vaccine recipient died
* VAX_TYPE: Type of vaccination (only COVID-19 has been selected) - deleted
* VAX_MANU: Manufacturer of the vaccine (serves as treatment arms: BIONTECH / MODERNA / JANSSEN)
* VAX_DOSE_SERIES: Number of vaccine doses administered - deleted
* SYMPTOM: Reported symptom (multiple symptoms will result in multiple rows)
# Visualisation task
To display the advers event profile of the different vaccines. The visualisation should allow to detect differences in the incidence of adverse events. You may concentrate on the most frequently reported events.

ps: some of the variables needed to be deleted due to file size constrains.
