## Markov Trace

**Background**
* Cost-effectiveness models often model efficacy of treatments by projecting patient transitions between health states via a markov trace

**Data**
* 500 subjects randomised 1:1 to Drug A or Drug B
* Patients start in a state of No Response at Visit 1, and transition between four possible health states up to Visit 20 (No Response, Low Response, Response, High Response)

**Challenge**
* Visualise the efficacy of the two treatments with respect to state occupancy over time

**Options**
* Compare the treatments at an aggregate level (%s in each state over time)
* Visualise response gain/maintenance/loss over time at a patient level
* Explore decisions which may be made based on patient behaviour – e.g., if rules were introduced to discontinue subjects with suboptimal efficacy, how might different treatment discontinuation rules impact the numbers of subjects discontinuing each treatment?
