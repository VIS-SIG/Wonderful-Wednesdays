Example meta-analysis dataset
================

## Background

The example simulated data set is based on seven phase III studies in
Hypertension. The objective of the studies were to compare the use of
intensive hypertensive medicences compared to standard of care to
control blood pressure. The studies are inspired by the large blood
pressure intervention studies such as
[SPRINT](https://biolincc.nhlbi.nih.gov/studies/sprint/). In this case,
instead of a large single trial, we are faced with an integreted set of
seven seperate trials.

## The data set and variable definitions

The data set is an abridged version of [CDISC
ADaM](https://www.cdisc.org/standards/foundational/adam).

The data set contains the following variables:

  - **STUDYID** Masked study identifer  
  - **USUBJD** Masked subject identifier Identifer
  - **TRT01P** Randomised treatment
  - **AVAL** Mean systolic blood pressure (mm Hg) measured at 1-Year
  - **CHG** Change from baseline mean systolic blood pressure (SBP) \[mm
    Hg\] at 1-Year  
  - **PCHG** Percentage change from baseline mean systolic blood
    pressure (%change) at 1-year
  - **AVALCAT1** Responder analysis - patients with controlled SBP at
    1-Year (\<=120 mmHg) 1 = Yes, 0 = No 1-Year

A wide collection of baseline measurements are also included which can
be explored to for subgroups or differential treatment effects. For a
detailed overview of the data set, please refer to the [data dictionary
here](DataDictionaryDec2020.xlsx)

## Example analysis

## Load data

``` r
library(tidyverse)    
library(broom)
data <- read_csv("BIG_DATA_PSI_WW_DEC2020.csv")
```

## Plot pooled data

``` r
data %>% ggplot(aes(x = BASE, y = AVAL)) +
  geom_point()
```

![](Readme_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

## Simple analysis by study

``` r
data %>% 
  group_by(STUDYID) %>%
  do(fit = tidy(lm(AVAL ~ BASE + TRT01PN, data = .))) %>% 
  unnest(fit) %>%
  filter(term == "TRT01PN")
```

    ## # A tibble: 7 x 6
    ##   STUDYID term    estimate std.error statistic  p.value
    ##     <dbl> <chr>      <dbl>     <dbl>     <dbl>    <dbl>
    ## 1       1 TRT01PN    -7.12     0.480     -14.8 5.14e-44
    ## 2       2 TRT01PN    -8.17     0.694     -11.8 1.60e-28
    ## 3       3 TRT01PN   -10.1      0.508     -19.8 5.97e-73
    ## 4       4 TRT01PN    -7.27     0.476     -15.3 3.18e-48
    ## 5       5 TRT01PN    -6.97     0.665     -10.5 1.57e-23
    ## 6       6 TRT01PN    -6.80     0.358     -19.0 4.40e-74
    ## 7       7 TRT01PN    -7.74     0.621     -12.5 2.48e-32
