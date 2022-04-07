# HiSCR data example

## Background

In a phase III study with patients suffering from hidradenitis suppurativa, an active drug was compared to placebo. There were 200 subjects in each group and the endpoint was the HiSCR which is a binary endpoint. This endpoint is based on three continuous components:

* number of abscess
* number of draining fistulae
* number of inflammatory nodules


A patient reaches a HiSCR response, if all of the following three conditions are met, when the baseline data are compared to the follow-up data (at week 16):

* at least a 50% decrease in (AN) count; AN count is defined as the sum of the number of abscess and the number of inflammatory nodules
* no increase in the number of abscesses
* no increase in the number of draining fistulae

The aim of the study was to compare the two treatment arms in regards to HiSCR response.

## Challenge

The challenge is to visualize the impact of changing the definition of HiSCR response on the results. The idea is to change, for example, the first condition and assume that a decrease of 25% or 75% is needed to reach HiSCR response. The second and third condition can be changed separately, or a mix of changes to two or all conditions can be applied. How does this impact the results?

## Data set

| Variable | Coding | Description |
| :------- | :----- | :---------- |
| abscesses.base | continuous | number of abscess at baseline |
| drain.fist.base | continuous | number of draining fistulae at baseline |
| infl.nod.base | continuous | number of inflammatory nodules at baseline |
| abscesses.w16 | continuous | number of abscess at week 16 |
| drain.fist.w16 | continuous | number of draining fistulae at week 16 |
| infl.nod.w16 | continuous | number of inflammatory nodules at week 16 |
| TRT | categorical ("ACT", "PBO") | treatment arm: active or placebo |
| HiSCR | categorical ("Yes", "No") | HiSCR response |
