# Vasculitis Data


Vasculitis is an inflammation of the blood vessels, in many cases caused by the body’s immune system attacking healthy blood vessels, causing them to become swollen and narrow. The symptoms associated with vasculitis are varied, and include asthma, allergic rhinitis (cold-like symptoms), fever, joint pain, tiredness, loss of appetite and weight loss. In serious cases, if left untreated, severe vasculitis can lead to organ failure and death.
Vasculitis is treated primarily with oral corticosteroid (OCS) treatment. However long-term usage of OCS therapy at high doses is associated with a number of side-effects which worsen over time, and steroid-dependency is often a concern, so steroid doses need to be reduced if possible. However, some patients have a propensity to relapse, in which the patient experiences an acute flare-up of symptoms, usually requiring immediate treatment with high dose OCS treatment. Patients are considered to be in remission if the symptom score is zero concurrently with the OCS dose being ≤ 7.5 mg/day.
This is a study of a new investigational medicine for the treatment of a rare type of vasculitis, with patients randomised to active treatment or placebo, with an on-treatment period of 52 weeks and a subsequent off-treatment follow-up period of up for 8 weeks. An ideal medicine would reduce vasculitis symptoms and/or enable a reduction in OCS dose and/or reduce the risk of relapse. Additional endpoints are defined for total number of days the patient was in remission during the on-treatment period, and a binary endpoint for whether a patients achieved remission within the first 24 weeks and maintained in remission until the end of the on-treatment period.
Being a rare disease, there is no established consensus on a single endpoint for demonstrating efficacy. The challenge is to use data visualisation to explore the effectiveness of the treatment across a range of different clinical outcomes. Clinical questions of interest include:


* Is it possible to visualise the effectiveness of the medicine, simultaneously considering multiple endpoints? 
* Is there a relationship between relapse events and OCS dose?
* How can we visualise changes in OCS dose states?  
* Are there patterns in terms of duration of remission, and how does this relates to other endpoints?

The table below summarises the variables in the dataset. For each subject, the data includes a single record for each day post-randomisation, up to a maximum of 60 weeks. N.B. Variables acc_rem and sus_rem are defined at the patient level, i.e. values are replicated across all records for a subject.


| Variable | Type | Label |
| :-- | :-- | :-- |
| subject | Num | Subject ID |
| trt01pn | Num | Randomised treatment (0 = Placebo; 1 = Treatment) |
| ady | Num | Study Day |
| sym | Num | Vasculitis symptom score |
| dose | Num | Oral Corticosteroid (OCS) dose |
| rem | Char | Subject in Remission, i.e. Vasculitis Symptom Score = 0 and OCS Dose ≤ 7.5 mg/day (Y/N) |
| rel | Char | Relapse Event (Y) |
| acc_rem | Num | Accrued Duration of Remission (Days) |
| sus_rem | Char | Subject Achieved Remission Within First 24 Weeks and Remained in Remission Until EOS? (Y/N) |



The data can be found [here](./vas_data.csv).