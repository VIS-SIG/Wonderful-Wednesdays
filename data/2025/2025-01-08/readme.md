# Adverse events

- Sample ADAE dataset generated using [teal.data](https://insightsengineering.github.io/teal.data/main/) package in R. Data limited to two treatments (Drug X, Placebo), although subjects may switch between the two

Challenge: produce a visualization using this sample ADAE dataset
The challenge is open-ended, and you can choose a feature of the data to focus on. Possible ideas:
- Investigate the co-occurrence of adverse events (the October 2020 webinar might provide some inspiration!) or ‘clusters’ of adverse events – do certain groups of adverse events tend to occur alongside one another or at certain times
- Investigate the time to a given event or adverse event profiles over time
- Explore the hierarchical nature of adverse events (MedDRA terms)


Note that other than reducing the treatment arms, the ADAE data is exactly as produced in teal.data
This gives full freedom to utilize/explore as few/many of the variables as you wish
The AE terms are populated with codes rather than actual terms, preserving the hierarchical nature of the event classification
