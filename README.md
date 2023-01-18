# ID529-DDDD

Contributors: S. Baum, R. Hickman, D. Liang, S. Park, H. Kelahan, and L. Ung

You can check the instruction [here](id529_groupproj.html) and check the [rmarkdown](id529_groupproj.Rmd).

<br>

Data dictionary, also called as a code book is sort of a metadata which contains data about the dataset we are analyzing.\
Being clear with definitions and description with the variables and values in our study is crucial to allow communication between collaborators and ensure reproducibility and robustness.\
Our group aim to present an efficient way to create and share data dictionary by demonstrating the use of packages useful in epidemiologic research.

## Components of a data dictionary

Basic components:\
- Variable **names**/**types**/**descriptions**\
- Allowed values (**options** for discrete, **min/max** for continuous data)

Optional components:\
- number of missing values\
- Units\
- Question from the questionnaire, if applicable

## Recommendations

Search for existing dictionaries and applicable common data elements for standardization. (ex. NIH CDE repository)\
Share and update data dictionary along the research process.

Examples of common elements:\
<https://cde.nlm.nih.gov/home>\
<br> <br>

## Packages

-   Labelled
-   dataMeta
-   codebook
