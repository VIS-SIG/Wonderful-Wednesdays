# Prediction data set

# Purpose

The idea of this webinar is to find ways to visualize a prediction model. In a first step, we need to fit such a model. We are dealing with a binary outcome and, therefore, a logistic regression model might be a good choice. Any other method is welcome as well, such as a simple classification tree. Note that we do not necessarily focus on choosing the best statistical method to do prediction. This would be a separate and complex topic on its own. We focus on good ways to communicate our prediction model to a "non-technical" audience.

# Data set

The data set is about a retrospecitve study on finding "Predictors of Residual Tumor in Breast-Conserving Therapy". An article documenting the original research can be found [here](https://pubmed.ncbi.nlm.nih.gov/26224405/). We use a simulated data set which is very similar to the original one. The data is saved as a [csv file](Reexcision.csv). There are 500 subjects included. The outcome variable is reexcision and it is called "RE" in the data set (categories: yes/no; coded as 1/0). It describes, if there has been a reexcision necessary after the (initial) surgery.

The following predictors are being included in the data set:  

* **age**  

* **tumorsize**  

* **histology** (hist; 0: others, 1: Invasive-duct./ductal-lob.)  

* **Multifocality** (mult.foc; 0: no, 1: yes)  

* **Accomp. in situ** (acc.in.situ; 0: others, 1: DCIS and LCIS)  

* **Lymphovascular** invasion (lymph.inv; 0: no, 1: yes)  

* **Estrogen-receptor** (estr.rec; 0: no, 1: yes)  

* **Progesterone-receptor** (prog.rec; 0: no, 1: yes)

# Aim of the visualization

In a first step, we need to set up a prediction model for reexcission based on our predictors listed above. You are free to choose your prefered prediction method. The goal of this exercise is to visualize your results. In the best case, it should become clear which predictors are the most important ones and what the effect of these predictors on the outcome variable looks like. The audience is intended to be a "non-technical" one.