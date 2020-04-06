Example Survival data set
================

## Background

The example data set is based on large phase III clinical trials in
Breast cancer such as
[ALTTO](https://ascopubs.org/doi/pdf/10.1200/JCO.2015.62.1797).

The “trial” aims to determine if a combination of two therapies tablemab
(T) plus vismab (V) improves outcomes for metastatic human epidermal
growth factor 2–positive breast cancer and increases the pathologic
complete response in the neoadjuvant setting (treatment given as a first
step to shrink a tumor before the main treatment or surgery).

The trial has four treatment arms, patients with centrally confirmed
human epidermal growth factor 2-positive early breast cancer were
randomly assigned to 1 year of adjuvant therapy with V, T, their
sequence (T→V), or their combination (T+V) for 52 weeks. The primary end
point was progression-free survival (PFS).

## The data set and variable definitions

The data set contains the following variables:

  - STUDYID - the study id
  - SUBJID - subject id
  - USUBJID - unique subject id
  - AGE - age at randomisation
  - STR01 - Hormone receptor status
  - STR01N - Hormone receptor positive (Numeric)
  - STR01L - Hormone receptor positive (Long format)
  - STR02 - Prior Radiotherapy at randomisation
  - STR02N - Prior Radiotherapy at randomisation (Numeric)
  - STR02L - Prior Radiotherapy at randomisation (Long format)
  - TRT01P - Planned treatment assigned at randomisation
  - TRT01PN - Planned treatment assigned at randomisation (numeric)
  - PARAM - Analysis parameter
  - PARAMCD - Analysis parameter code
  - AVAL - Analysis value (time)
  - CNSR - Censoring (1 = censored)
  - CNSDTDSC - Event or censoring description
  - DCTREAS - Discontinuation from study reason

## Example analysis

Below is a crude example of how to plot Kaplan-Meier estimates by
treatment.

    ## Warning: package 'tidyverse' was built under R version 3.6.3

    ## -- Attaching packages ---------------------------------------------------------------------- tidyverse 1.3.0 --

    ## v ggplot2 3.3.0     v purrr   0.3.3
    ## v tibble  2.1.3     v dplyr   0.8.5
    ## v tidyr   1.0.2     v stringr 1.4.0
    ## v readr   1.3.1     v forcats 0.5.0

    ## Warning: package 'ggplot2' was built under R version 3.6.3

    ## Warning: package 'tibble' was built under R version 3.6.3

    ## Warning: package 'tidyr' was built under R version 3.6.3

    ## Warning: package 'readr' was built under R version 3.6.3

    ## Warning: package 'purrr' was built under R version 3.6.3

    ## Warning: package 'dplyr' was built under R version 3.6.3

    ## Warning: package 'stringr' was built under R version 3.6.3

    ## Warning: package 'forcats' was built under R version 3.6.3

    ## -- Conflicts ------------------------------------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

    ## Warning: package 'broom' was built under R version 3.6.3

    ## Warning: package 'survival' was built under R version 3.6.3

    ## Warning: Missing column names filled in: 'X1' [1]

    ## Parsed with column specification:
    ## cols(
    ##   X1 = col_double(),
    ##   STUDYID = col_character(),
    ##   SUBJID = col_double(),
    ##   USUBJID = col_character(),
    ##   AGE = col_double(),
    ##   STR01 = col_character(),
    ##   STR01N = col_double(),
    ##   STR01L = col_character(),
    ##   STR02 = col_character(),
    ##   STR02N = col_double(),
    ##   STR02L = col_character(),
    ##   TRT01P = col_character(),
    ##   TRT01PN = col_double(),
    ##   PARAM = col_character(),
    ##   PARAMCD = col_character(),
    ##   AVAL = col_double(),
    ##   CNSR = col_double(),
    ##   CNSDTDSC = col_character(),
    ##   DCTREAS = col_character()
    ## )

![](Readme_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->
