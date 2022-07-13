Visualising Ranking Data
================

# Challenge

Visualise the relative performance of the treatments based on the ranking [data](bayesian_ranking.csv). You may want to consider other metrics which can be derived from the ranking data and used to compare treatments.

# Data

The treatment response of 12 treatments for major depression was investigated over 111 trials.  
Treatment response was defined as a reduction of at least 50% from the baseline score on the HAMD or MADRS at week 8 (or, if not available, another time between week 6 and 12).  
 
A network meta-analysis model was generated, samples were taken from the model using MCMC 
and the rank probabilities were calculated for each treatment.

The dataset supplied for this challenge contains the ranking probabilities of the 12 different treatments for depression from Ranks 1-12.  Each “Rank” cell contains the probability of each treatment receiving that ranking (preferred direction = 1 i.e. a treatment being Rank 1 indicates it being the most effective).

Response was defined as a >=50% reduction on the Hamilton Depression Rating Scale (HAM-D) or the Montgomery-Asberg Depression Rating Scale (MADRS) at Week 8 (or another available time point between Weeks 6 and 12).

The NMA was used to compute rank probabilities for each treatment (probability each treatment ranks in each position)

The [dataset](bayesian_ranking.csv) provides these rank probabilities. Rank 1 indicates the best performing treatment, Rank 12 the worst.