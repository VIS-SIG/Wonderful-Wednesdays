# Treatment Attributes

## The background

The current challenge considers a hypothetical measure, the “Complete Disease Index” (CDI). The measure consists of five domains, each scored on a visual analogue scale from 0-100 (0=worst possible outcome, 100=best possible outcome). The simulated data reflects a trial where 500 participants, randomized at random to one of five treatment arms, score each CDI domain at Baseline and two follow-up visits (after 6 and 12 months). 

## The challenge

The challenge is to compare the relative performance of the treatments across the individual domains and overall, considering how this might change depending on the importance that subjects place on each domain.

## The data
You may download [data](../2026-02-11/simulated_cdi_dataset.xlsx) as Excel file. R users may use the following code to load the data.

```{r, echo = TRUE, eval=FALSE}

# Loading
library("readxl")

# loading xlsx file
my_data <- read_excel("https://raw.githubusercontent.com/VIS-SIG/Wonderful-Wednesdays/refs/heads/master/data/2026/2026-02-11/simulated_cdi_dataset.xlsx")

```
