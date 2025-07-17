# Intercurrent Events

## The background

Intercurrent event: event occurring after initiation of study intervention which either precludes the observation of the outcome variable or affects its measurement or interpretation.

## The data

- 800 subjects randomised 1:1 to Treatment A or Treatment B
- Patients respond to a visual analogue scale (0=worst outcome, 100=best outcome) monthly for one year
- Variables: (1) USUBJID (2) TRT (3) AVISIT (4) AVAL (5) ICE
  - ICE is an indicator variable (Y or N), reflecting whether the visit is preceeded by an intercurrent event

The data can be found [here](WWW_AUG2025.xlsx).

## The challenge

Compare the two treatment arms, considering how intercurrent events might be handled.

## Considerations

- Possible outcomes: 
  - Mean score / mean change / mean % change
  - % of patients achieving a score >=X
- How to handle intercurrent events?
  - Ignore
  - Set to missing and impute
  - Impute as non-response
  - Something else?