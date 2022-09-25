# Quality of life outcomes in a cancer trial

## EORTC QLQ-C30

The EORTC QLQ-C30 is a 30-item questionnaire that has been designed for use in a wide range of cancer patient populations and is a reliable and valid measure of the quality of life in cancer patients (Aaronson et al., 1993).

Each item is rated on a 4-point response scale ranging from 1 ("Not at all") to 4 ("Very much"), except items 29 and 30 that have seven response choices on a scale ranging from 1 ("Very poor") to 7 ("Excellent"). (https://www.eortc.org/app/uploads/sites/2/2018/08/Specimen-QLQ-C30-English.pdf)

All items of this questionnaire relate to a recall period of 1 week.

It includes one global health and quality of life scale, five functional scales, eight symptoms scales, and one financial difficulty scale:

* health and quality of life scale (QL);

* Physical Functioning (PF);

* Role Functioning (RF);

* Emotional Functioning (EF);

* Cognitive Functioning (CF);

* Social Functioning (SF);

* Fatigue (FA);

* Nausea and Vomiting (NV);

* Pain (PA);

* Dyspnea (DY);

* Insomnia (SL);

* Appetite loss (AP);

* Constipation (CO);

* Diarrhea (DI);

* Financial Difficulty (FI).

 The QLQ-C30 scores will be calculated as per the scoring rules defined by the EORTC, ranging from 0 to 100. (https://www.eortc.org/app/uploads/sites/2/2018/02/SCmanual.pdf)
 
Higher scores represent better outcomes for the global health sclae (QL) and the functional scales (PF, RF, EF, CF, SF), whereas higher scores represent higher severe symptoms for the symptom scales/items (FA, NV, PA, DY, SL, AP, CO, DI, FI). 

To calculate the scale scores, a raw score (RS) is first calculated for each scale, as the mean of the items of the scale. Then, the scale scores are transformed on a 0-100 scale as follows:

-   For functional scales:

$$Score=(1-\frac{RS-1}{range}\cdot100)$$

-   For symptom scales/items and Global health status / QoL scale:

$$Score=\frac{RS-1}{range}\cdot100$$

## A phase 3 cancer trial

* Two arms (Experimental Treatment vs. Standard of Care);

* 100 participants in the Experimental Arm and 100 participants in the Standard of Care Arm;

* Participants are followed for 48 weeks;

* The PRO scores are collected at baseline and every 3 weeks


# Dataset

The dataset is called "ww eortc qlq-c30.csv" and can be found in the list of files on the top of this page. It contains the following variables:

* USUBJID

* ARM ("Experimental Treatment", "Standard of Care")

* AVISIT (from "Week 0" to "Week 48")

* AVISITN (1 to 17)

* QL 

* PF

* RF

* EF

* CF

* SF

* FA

* NV

* PA

* DY

* SL

* AP

* CO

* DI

* FI


# Visualization tasks

* Visualize the treatment benefit, if any, depending on the endpoints

* The treatment effect could be assessed with absolute values or change from baseline

* A threshold of ± 10 or ± 5 points for the cahange from baseline could be used for assessing meaningful worsening or improvement  

## References
Aaronson, N. K., S. Ahmedzai, B. Bergman, M. Bullinger, A. Cull, N. J. Duez, A. Filiberti, et al. 1993. “The European Organization for Research and Treatment of Cancer QLQ-C30: A Quality-of-Life Instrument for Use in International Clinical Trials in Oncology.” JNCI Journal of the National Cancer Institute 85 (5): 365–76. https://doi.org/10.1093/jnci/85.5.365.
