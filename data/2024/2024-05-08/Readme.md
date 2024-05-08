# Background

- It is known that sometimes at the design stage of a clinical trial, simulations are conducted to better understand the operating characteristics of the design. 
- In a [recently published paper](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9304586/), a simulation study was conducted for a platform trial design in the context of NASH (Non-Alcoholic Steatohepatitis). Different assumptions regarding e.g. treatment effect and correlation between the surrogate interim endpoint and the final endpoint, as well as design choices such as sample size and maximum number of cohorts allowed in the platform were investigated. 


# Data

- The simulated dataset can be found on [Github](https://github.com/el-meyer/airship/blob/master/data/ExampleDataNASH.csv).
- Simulation Input Columns and their meaning:
  - ShortTermEndpointQuality = Correlation between surrogate interim and final endpoint
  - Maximumnumberofcohorts = Maximum number of cohorts allowed to enter the platform
  - TypeofDataSharing = How is data shared across cohorts
  - CohortInclusionRate = Rate at which new cohorts enter the platform (higher levels indicate faster entry)
  - FinalCohortSampleSize = Final Sample Size per Cohorts
  - InterimFutilityStopping = Binding early futility stopping yes/no
  - TreatmentEfficacySetting = Treatment effect scenario (can be found in paper). Often the treatment effect assignment is random following a distribution.
- Simulation Output Columns and their meaning:
  - Avg_Pat = Average number of participants enrolled in the trial
  - Avg_Pat_First_Suc = Average number of participants enrolled in the trial	until the first treatment is declared successful
  - Avg_Perc_Pat_Sup_Plac = Average percentage of patients who receive a treatment that is better than control
  - Avg_Cohorts = Average number of cohorts enrolled in the trial
  - FDR = False Discovery Rate
  - PTP = Per-Cohort-Power; NA in pure null scenarios
  - PTT1ER = Per-Cohort-Type 1 Error; NA in pure alternative scenarios
  - FWER = Family-Wise-Error-Rate
  - Disj_Power = Disjunctive Power
  - FWER_BA = Family Wise Error Rate where only simulations are used in the denominator that contained a treatment that is not superior to control 
  - Disj_Power_BA = Disjunctive Power where only simulations are used in the denominator that contained a treatment that is superior to control


# Challenge

- How can we best show the effect of sample size on the power/type 1 error?
- Does sample size affect PTP and Disj_Power in the same way? How about in interaction with the type of data sharing?
- What is the relationship between number of cohorts, cohort inclusion rate and power?
- How can we investigate the effectiveness of early stopping for futility?
- What is the relationship between the quality of the surrogate endpoint and the average number of patients enrolled? Is there an interaction with futility stopping and treatment effect scenario?
- How do FWER and FWER_BA differ from each other with respect to treatment effect scenario and maximum number of cohorts?
- Can you find other interesting patterns in the data?
