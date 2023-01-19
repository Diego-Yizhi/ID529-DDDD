# ID529-DDDD

Contributors: S. Baum, R. Hickman, D. Liang, S. Park, H. Kelahan, and L. Ung

You can check the instruction [here](https://hu-my.sharepoint.com/:u:/g/personal/yizhi_liang_hsph_harvard_edu/ETH58biI-LZPvN8s71WKVjUBxYFBx924dT9NtOwTuJkMAw?e=fd62YZ) and check the [rmarkdown](id529_groupproj.Rmd).

> Note: [[**FOR MAC USER**]]
>
> Before you run the R chunks in the rmarkdown file, you'd better check whether you have installed [XQuartz](https://www.xquartz.org/) in your computer. Many R packages may rely on this.

<br>

Data dictionary, also called as a code book is sort of a metadata which contains data about the dataset we are analyzing.\
Being clear with definitions and description with the variables and values in our study is crucial to allow communication between collaborators and ensure reproducibility and robustness.\
Our group aim to present an efficient way to create and share data dictionary by demonstrating the use of packages useful in epidemiologic research.

## Components of a data dictionary

Basic components:
- Variable **names**/**types**/**descriptions**
- Allowed values (**options** for discrete, **min/max** for continuous data)

Optional components:
- number of missing values
- Units
- Question from the questionnaire, if applicable

## Recommendations

Search for existing dictionaries and applicable common data elements for standardization. (ex. NIH CDE repository)\
Share and update data dictionary along the research process.

Examples of common elements:
<https://cde.nlm.nih.gov/home>\
<br> <br>

## Packages

-   Labelled
-   dataMeta
-   codebook
