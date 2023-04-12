# Diary Data Challenge


## Background

This month’s challenge will be to visualise diary data, whereby patients complete a diary (grading a number of symptoms), each day.
For this challenge, we consider a hypothetical diary, consisting of 6 symptoms (Exhaustion, Aching, Tenderness, Depression, Loneliness, Anxiety). 300 subjects (200 active, 100 placebo), grade each of these symptoms on a 4-point scale (0 = None, 1 = Minor, 2 = Moderate, 3 = Extreme) each day, for 100 days.


## The Dataset

Whilst simple, the [dataset](WWWDiary.Rds) is intended to highlight how diary datasets can quickly become large as the number of subjects, number of graded symptoms and length of assessment period all increase.
The [dataset](WWWDiary.Rds) contains the following variables:
- USUBJID: Unique subject identifier to the 300 subjects
- TRT: Either Active (200 subjects) or Placebo (100 Subjects)
- AVAL (resp. AVALC): Numeric (character) response for the given item on the given day
- PARAM (PARAMN): The symptom (question number) being assessed
- ADY: Day of assessment (running from 1 through 100)

## The Challenge

The challenge is to use data visualisation to:
(a) Aid in tracking individual patient disease progression / patient experience throughout the assessment period
and/or

(b) Comparing the two treatments in terms of how well they improve patient symptoms over the course of the assessment period


## Possibilities

- Feel free to restrict attention to a given symptom / subset of symptoms
- The diary itself is hypothetical, so feel free to create derive your own summaries which may be of interest (for instance, a total score across symptoms or a running average symptoms score over a given number of days)

## Bonus Challenge

- Can you identify whether any of the items are ‘linked’? Is there a meaningful way to classify the items into different symptom ‘sub-scales’ based on findings highlighted by your visualisation(s)?