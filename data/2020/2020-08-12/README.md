# Adverse event example data set

The [adverse example dataset](https://github.com/VIS-SIG/Wonderful-Wednesdays/blob/master/data/2020/2020-08-12/2020-08-12_ae_example_dataset.csv) is based on a clinical trial of an active treatment for eczema compared to placebo in adolescents that are unresponsive to standard care.

The primary outcome was a continuous outcome that measured the extent and severity of eczema at 6 months.

Participants were treated with either active treatment or placebo for 6 months and then followed-up for a further 6 months.

AEs were monitored and collected for the entire 12 month study period.

## Adverse event profile

Objective: to describe and compare the Adverse Event profiles between treatment arms.

## Overview of the dataset

Participants were randomised between November 2016 – June 2017

Placebo n=29, Intervention n=32

The [dataset](https://github.com/VIS-SIG/Wonderful-Wednesdays/blob/master/data/2020/2020-08-12/2020-08-12_ae_example_dataset.csv) contains multiple observations per subject

The following variables are measured at randomisation:

* usubjid: unique subject identifier
* arm: treatment assignment name
* armn: treatment assignment numeric (0: placebo; 1:intervention)
* rando_date: date of randomisation (yyyymmdd)

Additional variables measured throughout study (including treatment and follow-up period)

* repeatnum: unique event identifier within usubjid
* aept: adverse event code at preferred term/lower level
* aebodsys: adverse event code at body system/higher level
* aesev: adverse event severity grade (mild, moderate, severe)
* aesevn: adverse event severity grade number (1: mild, 2: moderate, 3: severe)
* aeser: serious adverse event (no, yes)
* aesern: serious adverse event (0: no, 1: yes)
* aestdat: adverse event start date (yyyymmdd) 
* aeeddat: adverse event end date (yyyymmdd)
* dur: adverse event duration (days)


# Downloading the data 

To download the raw csv file [click here](https://raw.githubusercontent.com/VIS-SIG/Wonderful-Wednesdays/master/data/2020/2020-08-12/2020-08-12_ae_example_dataset.csv) and press right click. 

**NOTE** to download a single data set as a csv file, click on the raw button and save the file. The [following link describes the process in further detail](https://stackoverflow.com/questions/4604663/download-single-files-from-github).
