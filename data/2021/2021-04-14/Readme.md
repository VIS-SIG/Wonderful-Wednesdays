# Sustained Response

## Background

Psoriasis is a chronic, inflammatory skin disease. For such diseases, it is of interest to not only compare treatments in terms of patients achieving a response, but also in terms of patients sustaining this response once it is achieved. This is the focus of this month’s challenge: produce a visualization to compare treatments with regards to patients sustaining a response.

The synthetic data contains PASI (Psoriasis Area and Severity Index) scores for three treatment groups: two receive an active treatment in different doses; the third receives a comparator. The three arms are balanced, with 300 patients in each. The data contains PASI scores at Baseline and eight follow-up visits, spread over the course of a year.

PASI scores can range from 0 to 72, with higher scores indicating a worse condition state. The criteriafor response can be chosen, but typical thresholds include a 75%, 90% or 100% reduction in PASI scores relative to Baseline (PASI75/PASI90/PASI100). More than one threshold could also be considered in the same visualization.

## Challenge:

Different approaches could be considered to define a patient as having sustained their response. A simple definition of sustained response could be that having achieved a response at a given visit, a patient then has that response at all subsequent visits. More complex approaches may explore different methods for interpolating between visits.

The dataset also contains a small amount of missing data. It may be of interest to explore how the approach used to handle this missing data influences the interpretation of sustained response.

The data can be found [here](./WWW_SustainedResponse.csv).