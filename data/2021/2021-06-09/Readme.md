# PSI Wonderful Wednesday- Psychometric example dataset 

## Psychometric Overview

[Patient Reported Outcomes (PROs)](./PSI_WW_psychometric.csv) are often used within clinical trials. Prior to use as an endpoint, it is important to establish measurement properties of the instrument in the population of interest.

This is conducted on blinded data, with no knowledge of the treatment allocation of each patient. Instead, anchor measures are used and compared to the score that is being evaluated. These anchor measures are usually simple questions that are designed to link conceptually to the overall target of evaluation or can be previously validated measures that assess similar concepts.

## Simulated Disease Questionnaire

[The dataset](./PSI_WW_psychometric.csv) includes item level data for a 12 item (question) Simulated Disease Questionnaire (SDQ-12) at four different timepoints and for 2000 patients. Each item is scored on a 0-3 scale (0 representing worst possible health state/most severe symptoms, 3 representing best possible health state and no symptoms), and a sum score is also calculated by adding all item responses.
Each of the 12 items has been simulated to represent a distinct symptom:

* 'Item 01 Dry Cough', 
* 'Item 02 Loss of Smell', 
* 'Item 03 Skin Rash', 
* 'Item 04 Fever', 
* 'Item 05 Headache', 
* 'Item 06 Short of Breath', 
* 'Item 07 Diarrhoea', 
* 'Item 08 Sore Throat', 
* 'Item 09 Fatigue', 
* 'Item 10 Runny Nose', 
* 'Item 11 Ocular Issues', and  
* 'Item 12 Loss of Taste'.
Anchor measures

The anchor measures included in the dataset are as follows:

* **Patient Global Impression of Change (PGIC)** - A single item assessment indicating the level of change from baseline. This is scored from 1 – 7, indicating responses of “Much Improved”, “Moderately Improved”, “Minimally Improved”, “No change”, “Minimally Worsened”, “Moderately Worsened” and “Much Worsened” respectively. The PGIC is assessed at the final three timepoints (and is not assessed at baseline).
* **Fatigue PRO** - Measured on a scale of 0-67, with lower scores indicating higher levels of symptoms/worse health.
* **Flu PRO** - Measured on a scale of 0-63, with lower scores indicating higher levels of symptoms/worse health
Challenge

To produce visualisation to aid in the psychometric evaluation of the SDQ-12 using the provided anchor measures (PGIC, Fatigue PRO, Flu PRO). Some ideas for general analyses are provided below, but submissions could include one of these suggestions, all of these, or explore a different aspect of the SDQ-12 measurement properties completely.

## Ideas

Visualisations could explore the validity of the SDQ-12 (i.e. Is the SDQ-12 measuring the right thing):

*	Assessed by exploring the relationship between the SDQ-12 and the anchors. 
*	Is there a high correlation between the anchors and the SDQ-12 at each timepoint? 
*	If the patients are split into severity groupings based on the anchor measures, how do the scores on the SDQ-12 differ between these groups?
*	If patients have experienced change based on the anchor measures (i.e. grouping patients as worsened, stable and improved based on each anchor), how much change has been observed on the SDQ-12 in each of these groups?
Visualisations could also explore the reliability of the SDQ-12 (i.e. Does the SDQ-12 measure consistently):
*	Test-retest reliability can be assessed by looking at the degree of change in SDQ-12 between two timepoints in a subset of stable patients (as defined by anchor measures). 
•	If the SDQ-12 has good test-retest reliability, would expect the scores to remain stable between the two timepoints

## The dataset

The dataset is in wide format, with one row per patient, and includes the following variables:

* **PGIC_T2 - PGIC_T3**: A patient global impression of change reflecting change in patient reported overall symptom severity since baseline.
* **Item_1_T1 - Item_12_T4**: Item level data for each of the four timepoints. 0-3 scale with 0 representing the worst possible health (severe symptoms) and 3 representing the best possible health (no symptoms). The variable name Item_X_TY would refer to the response to Item X at Time Y.
* **T1_SDQ_PRO_SUM – T4_SDQ_PRO_SUM**: a simple summing up of the item responses at each time point to provide a total score.
* **T2_SDQ_PRO_SUM_CHG – T4_SDQ_PRO_SUM_CHG**: A derived change in sum score from Time 1
* **T1_fatigue_PRO – T4_fatigue_PRO**: Score for the fatigue PRO at the specified timepoint (Measured on a scale of 0-67, with lower scores indicating higher levels of symptoms/worse health).
* **T1_flu_PRO – T4_flu_PRO**: Score for the flu PRO at the specified timepoint (Measured on a scale of 0-63, with lower scores indicating higher levels of symptoms/worse health).

## Location 

The data can be found [here](./PSI_WW_psychometric.csv).
