## Background

For a drug to be approved for marketing, regulatory authorities must determine that the drug is effective and that its expected benefits outweigh its potential risks to patients. Over recent decades the method of conducting benefit-risk (BR) assessments has evolved from a non-structured and often mainly qualitative process to one that has become increasingly systematic and more transparent [1]. The U.S. Food and Drug Administration (FDA) has published a draft guidance to clarify how considerations about benefit-risk assessment (BRA) are integrated into the agency’s pre- and postmarket decisions for marketing applications of new drugs and biologics [2].

## Challenge

An Alzheimer’s Disease drug might have a positive benefit-risk profile for lowering blood pressure. To generate a hypothesis, an exploratory benefit-risk assessment will be conducted.
Consider the following outcomes:

1.	Efficacy: Benefit 1 - mean decrease from baseline systolic blood pressure of 5mm mercury at Week 26 (continuous scale on patient level)

2.	Efficacy: Benefit 2 - A decrease of less or equal to 5 percent from baseline systolic blood pressure at Week 26 (binary on patient level)

3.	Safety: Risk 1 - Incidence proportion of dizziness (binary on patient level)

4.	Safety: Risk 2 - Incidence proportion of Bradycardia (binary on patient level)

## Data

The CDISCPILOT01 study[3] serves as the test data. Keep in mind that the study’s primary goals were not to explore hypertension, thus your results might not be representative of studies that do.

### Brief Description of test data

This study was a prospective, randomized, multi-center, double-blind, placebo-controlled, parallel-group study. The objectives of the study were to evaluate the efficacy and safety of transdermal xanomeline, $50cm^2$ and $75cm^2$, and placebo in subjects with mild to moderate Alzheimer’s disease,

Source : [Data Domains](https://github.com/cdisc-org/sdtm-adam-pilot-project/tree/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/analysis/adam/datasets)

  * adsl

  * advs
  
  * adae
  
See [sdtm-adam-pilot-project](https://github.com/cdisc-org/sdtm-adam-pilot-project) [3] and [dataguide.pdf](https://github.com/cdisc-org/sdtm-adam-pilot-project/blob/master/updated-pilot-submission-package/900172/m5/datasets/cdiscpilot01/analysis/adam/datasets/dataguide.pdf) for further details.

## Questions

-	Considering the above outcomes and given that drugs have both benefits and risks, do the benefits exceed the risks?

-	Do the benefits exceed the risks for 
	  - Gender (Male, Female)
	  - Age group (<65, 65-80, >80)
	  
## References

1. Davies, M et al (2020), ‘Principles of benefit-risk assessment: A focus on some practical applications’, Journal of the Faculty of Pharmaceutical Medicine, 10 November 2020. Available at: https://www.fpm.org.uk/journals/principles-of-benefit-risk-assessment-a-focus-on-some-practical-applications/ (Accessed: 11-Jul-2023.)

2. US Food and Drug Administration. Benefit-risk framework review documents, Integrated Review. https://www.accessdata.fda.gov/scripts/cder/daf/index.cfm

3. cdisc-org(2020) sdtm-adam-pilot-project https://github.com/cdisc-org/sdtm-adam-pilot-project.git
