# Psoriasis example data set

Psoriasis:

* Red, thick, scaly plaques
* Lifelong disease
* High impact on quality of life

# PASI as a primary endpoint 

Psoriasis Area and Severity Index (PASI):

* Standard assessment in trials
* Range 0-72
* PASI>10 or >12 inclusion criteria
* Mean at baseline: ~20
* Very skewed distribution

As a dervied outcome:

* PASI75: at least 75% improvement from baseline
* PASI90: at least 90% improvement from baseline
* PASI100: 100% improvement from baseline

# The dataset

* Deidentified Subject Number: 1, …, 150 (= patient id)
* Blinded Treatment (N): 1, 2
* Blinded Treatment: “Blinded treatment 1”, “Blinded treatment 2”
* Analysis Visit (N): 3, …, 17
* Analysis Visit: “Week 1”, “Week 2”, “Week 4”, then every other 4 weeks up to “Week 52”
* Analysis Relative Day (N): 8, 15, 29, …, 356
* PASI100 Response Relative to Baseline: “Y”=Yes, “N”=No
* PASI90 Response Relative to Baseline: “Y”=Yes, “N”=No
* PASI75 Response Relative to Baseline: “Y”=Yes, “N”=No
* NRI Flag: “Y”=Yes, “N”=No; non-responder imputation, i.e. missing value is interpreted as “N”
