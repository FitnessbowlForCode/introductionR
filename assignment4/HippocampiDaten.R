# Hippocampi Data

#####################################################


# This example is about the - quite realistic, but only simulated - data of persons, 
# who are either healthy or have certain cognitive deficits, which - possibly - can be seen as a "precursor" # of (Alzheimer) dementia.

# The code snippets below are rough analysis suggestions; you are also welcome to # perform further / other analyses, which you consider useful or interesting!

# In addition, various code snippets from the previous exercise sheets are certainly useful. 

# In the database HippocampalVolumes.txt there are expressions of the following variables: 
#  
# Id: patient ID from 1 to 48
# Group: Group indicator, either "Healthy", "Sci" (subjective cognitive impairment)  or "Mci" (mild cognitive impairment)
# Tiv: total intracranial volume (in cm^3), i.e. "everything inside the skull bone".
# - VolLeft / VolRight: volume of the left / right hippocampus (in cm^3; manually determined based on of MRI images). 
# - Age: age of the person (in years).

# IMPORTANT: While these data are similar to the original data in some respects (since they are constructed in such a way, that they also allow meaningful analyses in terms of content, which to some extent reflect the actual circumstances of the person. 
# circumstances), they are nevertheless only SIMULATED DATA, i.e. NO "REAL" DATA! 

#####################################################

# Data import:

# Select the directory where the file "HippocampalVolumes.txt" is located.
...



# Now Data import:
Vols = read.delim(file = "Blatt05_HippocampalVolumes.txt", header = TRUE, dec = ",")


# Did the import work and does the data look like you want? 
# -> Display the data set (or only the first few lines).
head(Vols)

# For the sake of simplicity, only the volumes of the left hippocampi will be considered in the following.

# Task part (a): This is a first (descriptive) summary.
# for example, you could also investigate whether hippocampal volume makes sense as a diagnostic marker for Mci/Sci,
# i.e. whether there is a correlation (or a difference) between the groups "healthy", "SCI" and "MCI

# the commands table, summary, boxplot, etc. could be useful here...

.......
...

##################################################
# Task part (b): In this part, we first examine the dependence of the variables "volume of the left hippocampus" (VolLeft) and "total intracranial volume" (Tiv).

# Please create an x-y scatter plot with Tiv on the x-axis and VolLeft on the y-axis.
# Please make sure to choose appropriate axis labels and also label the diagram with a caption! 
plot(Vols$VolLeft, ..., 
      main = ...,
      xlab = ..., ylab = ..., ylim= ...)


# Linear Regression

# now use lm-command for regression and explain and interpret the output

...

# now: add more explanatory variables (e.g. Age). Do the results change? If so,
# in what way?
summary(lm(VolLeft ~ Tiv + Age, data = dat))
...

# Please check the model assumptions (e.g., residual plots for each explanatory variable separately).
# Are there potential "influential observations"?
....
..

