# DLQI data set

# Background
The DLQI is the most frequently used method for evaluating quality of life for patients with different skin conditions.

There are 10 questions, covering the following topics: symptoms, embarrassment, shopping and home care, clothes, social and leisure, sport, work or study, close relationships, sex, treatment. Each question refers to the impact of the skin disease on the patient’s life over the previous week.

Each question is scored from 0 to 3, giving a possible score range from 0 (meaning no impact of skin disease on quality of life) to 30 (meaning maximum impact on quality of life).
A series of validated categorizations were described in 2005 to give meaning to the DLQI scores: 0-1 = No effect on patient’s life; 2-5 = Small effect; 6-10 = Moderate effect; 11-20 = Very large effect; 21-30 = Extremely large effect. The DLQI questionnaire can be found [here](./dlqi.pdf).

In the dataset DLQI has been administered in a phase 3 clinical trial to patients with psoriasis. 150 has been randomized to Placebo (Treatment A) and 450 to the active treatment (Treatment B). The treatment effect in terms of Quality of Life is assessed at Week 16 and the Psoriasis Area and Severity Index is collected at baseline. Some DLQI assessment is missing at Week 16. The data set can be found [here](./ww2020_dlqi.csv).

# Challenge
* Show the multidimensional nature of DLQI with any analytical tool and translate the results in an effective visualization.
* Show the effect of the treatment, possibly reflecting the multidimensional nature of DLQI.

# Codebook


| Variable | Description | Values |
| --- | --- | --- |
| TRT | Treatment | A; B |
| PASI_BASELINE | Psoriasis Area and Severity Index at Baseline | 0-72 |
| VISIT | Visit | Baseline; Week 16 |
| DLQI101 | How Itchy, Sore, Painful, Stinging | 0-3 |
| DLQI102 | How Embarrassed, Self Conscious | 0-3|
| DLQI103 | Interfered Shopping, Home, Yard | 0-3 |
| DLQI104 | Influenced Clothes You Wear | 0-3 |
| DLQI105 | Affected Social, Leisure Activity | 0-3 |
| DLQI106 | Made It Difficult to Do Any Sports | 0-3 |
| DLQI107 | Prevented Working or Studying | 0-3 |
| DLQI108 | Problem Partner, Friends, Relative | 0-3 |
| DLQI109 | Caused Any Sexual Difficulties | 0-3 |
| DLQI110 | How Much a Problem is Treatment | 0-3 |
| DLQI_SCORE | DLQI Total Score | 0-30 |




# References
Finlay AY, Khan GK. Dermatology Life Quality Index (DLQI) - a simple practical measure for routine clinical use. Clinical and Experimental Dermatology, 1994; 19: 210-216.

Hongbo Y, Thomas CL, Harrison MA. Salek MS, Finlay AY. Translating the science of quality of life into practice: what do Dermatology Life Quality Index scores mean? Journal of Investigative Dermatology 2005; 125: 659-664.

Useful links:  
[https://en.wikipedia.org/wiki/Dermatology_Life_Quality_Index](https://en.wikipedia.org/wiki/Dermatology_Life_Quality_Index)  
[www.cardiff.ac.uk/dermatology/quality-of-life/dermatology-quality-of-life-index-dlqi/](www.cardiff.ac.uk/dermatology/quality-of-life/dermatology-quality-of-life-index-dlqi/)