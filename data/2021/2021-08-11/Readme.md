# Continuous Glucose Monitoring (CGM) data

The goal of the challenge is to produce an explanatory graphics - Visually demonstrate that there is a dose response in glycemic control for Rx (the higher the dose the lower the variability) and that the Rx med and Rx high demonstrate better glycemic control that SOC and these attributes are sustained.

# Background

Diabetes affects over 463 million people worldwide. Diabetes is a vascular disease that can lead to amputations, blindness, kidney failure and death. Managing patients’ glucose levels is key to managing their disease.

The CGM data allows us to approximate glucose levels every 5 minutes continuously throughout the day. Glucose values with low variability and within clinically relevant ranges of 72 and 140 mg/dL are considered to indicate good glycemic control.

# Study Design  

Patients were randomized to one of three doses of a new treatment for diabetes (Rx low, Rx med and Rx high) or Standard of Care (SOC).  A subset of these patients were selected to assess glycemic control using CGM.  CGM was measured at baseline (Visit 3) and at 26 weeks (Visit 17) and at 52 weeks (Visit 21).  CGM was measured over multiple days for each visit.

# Goal  

Explanatory - Visually demonstrate that there is a dose response in glycemic control for Rx (the higher the dose the lower the variability) and that the Rx med and Rx high demonstrate better glycemic control that SOC and these attributes are sustained.

# Data set

**The data will be available soon - please check back**

The data set contains the following variables:

* **SUBJID** Subject Identification
* **TREATMENT** Treatment Regimen. Values = “Rx low”, “Rx medium” and “Rx high” and “SOC”
* **VISITNUM** Study visit number. Values = “3” (baseline), “17” (26 weeks) and “21” (52 weeks)
* **DAY** Day the CGM was measured. Values = integers
* **TIME** Time of the day that the CGM value was measured i.e. 0:00, 0:05, 0:10,..23:50, 23:55
* **VALUE** CGM value for that visit/day/time. Values = Real numbers

