# Quality of life outcomes in a cancer trial: dealing with missing data

## A phase 3 cancer trial with EORTC QLQ-C30

The EORTC QLQ-C30 is a 30-item questionnaire that has been designed for use in a wide range of cancer patient populations and is a reliable and valid measure of the quality of life in cancer patients. 
It includes a number of different scales, but this challenge is focussed on the global health and quality of life scale (QL). 
Further details of EORTC QLQ-C30 can be found in the [Sept 2022 challenge](https://github.com/VIS-SIG/Wonderful-Wednesdays/tree/master/data/2022/2022-09-14).

Details of the simulated study are: 

* Two arms (Experimental Treatment vs. Standard of Care);

* 100 participants in the Experimental Arm and 100 participants in the Standard of Care Arm;

* Participants are followed for 48 weeks;

* The PRO scores are collected at baseline and every 3 weeks


# Dataset

The dataset contains the following variables:

* USUBJID

* ARM ("Experimental Treatment", "Standard of Care")

* The longitudinal evaluation of QL from Week 0 (WEEK00, numeric) to Week 48 (WEEK48, numeric)

* LASTVAL (last observed value before dropout, numeric)

* AVGVAL (QL average over available assessments, numeric)

* LASTVIS (last available assessment before dropout, numeric)

* AGE (numeric)

* AGEGR ("(35,45]", "(45,55]", "(55,65]", "(65,75]") 

* SEX ("F", "M")

* BMI (numeric)

* BMIGR ("Normal", "Obese", "Overweight", "Underweight")


The dataset is simulated with three patterns of missing data for QL:

* a MCAR pattern where the probability of missingness does not depend on observed and unobserved characteristics

* a MAR pattern where the probability of missingness depends on one covariate

* a MNAR pattern, where the probability of dropout depends on the QL worsening


# Visualization task

To produce data visualisations that provide insight on the missingness pattern of the data:

* Summarise the overall pattern: how many patients withdrew, when did patients withdraw?

* Use visualisation to show any covariates associated with an increased probability of missing data?

* Use visualisation to sumarise whether a worsening of QL leads to early withdrawal?


