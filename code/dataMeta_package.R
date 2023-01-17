
# 0 packages ------------------------------------------------------------------------------------------------------

library(dataMeta);library(tidyverse)


# 1 load data -----------------------------------------------------------------------------------------------------

df <- ID529data::nhanes_id529
df %>% glimpse()

# 2 create a linker -----------------------------------------------------------------------------------------------

# The linker will serve as an intermediary to build the data dictionary.
# It will contain the names of the variables, a description of each variable provided, 
# and a "variable type", which will give each variable a value of 1 or 0.

# Variable type = 0:  
#   for those variables that have options that can be portrayed 
#   as a range of values. For example, age or dates or any categorical factors 
#   that the user does not want to list out (NA values will be maintained).
# Variable type = 1:  
#    for those variables that have options that need to be listed and/or described later on.

# Generate the description of variables
var_desc <- c("Unique identifier for individuals in NHANES",
              "Race/Ethnicity",
              "Sex/Gender [as binary]",
              "Age [in years] at screening",
              "Ratio of Household Income to US Federal Poverty Line",
              "Days [Reported] Respondents Floss per Week [days/week]",
              "Perfluoroalkyl and Polyfluoroalkyl Substances [ng/mL]",
              "Perfluorooctane Sulfonate [ng/mL]",
              "Perfluorooctanoic Acid [ng/mL]",
              "Perfluorononanoic Acid [ng/mL]",
              "Perfluorohexane Sulfonate [ng/mL]",
              "Perfluorodecanoic Acid [ng/mL]",
              "Calories in Daily Dietary Intake [reported] [kCal]",
              "Calories from fast food excluding popcorn and seafood in daily dietary recall [kCal]",
              "Calories from food at restaurants excluding popcorn and seafood in daily dietary recall [kCal]",
              "Calories from food that is not from fast food or restaurants excluding popcorn and seafood in dietary recall [kCal]",
              "Calories from popcorn in dietary recall [kCal]",
              "Calories from shellfish in dietary recall [kCal]",
              "Calories from fish in dietary recall [kCal]",
              "Mean Systolic Blood Pressure [mm Hg]",
              "Weight [kg]",
              "Height [cm]"
              )

# Generate the type of variables
var_type <- c(0,1,1,rep(0,19))

# Create linker
linker <- build_linker(df, 
                       variable_description = var_desc,
                       variable_type = var_type)
View(linker)

# 3 Dictionary build ----------------------------------------------------------------------------------------------

# Here, `option_description` is set to NULL because the options of each variable are self explanatory, 
# thus the dictionary will not contain a description for each variable option. 
# If option_descriptions will be added, then a vector of each option description is constructed. 
# The length of this vector needs to be the same as the number of rows in the dictionary and 
# it will depend on the the variable_type used in the linker. 
# Another way to add option descriptions is to use the `prompt_varopts` function, 
# which prompt the user for a description of each variable option, 
# without the need to write the descriptions vector beforehand. 
# If using this option, 
# then prompt_varopts must be set to TRUE and option_description must be NULL. 

## NOTICE: Variable names will be automatically sorted alphabetically.

option_desc <- c("Range: 12 - 80",
                 "Range: 0 - 7",
                 "Range: 0 - 7539",
                 "Range: 0 - 1518",
                 "Range: 135.4 - 197",
                 "Range: 73568 - 83726",
                 "Range: 83.33 - 216.67",
                 "Range: 0 - 10765",
                 "Range: 0.49 - 1423.1",
                 "Range: 0.07 - 51.3",
                 "Range: 0.07 - 33.9",
                 "Range: 0.07 - 16.3",
                 "Range: 0.14 - 85.27",
                 "Range: 0.14 - 1403",
                 "Range: 0 - 852",
                 "Range: 0 - 5",
                 "Non-Hispanic White",
                 "NA's",
                 "Non-Hispanic Black",
                 "Hispanic",
                 "Range: 0 - 3424",
                 "Female",
                 "Male",
                 "Range: 0 - 1039",
                 "Range: 130 - 12108",
                 "Range: 29.8 - 173.7"
                 )

dict <- build_dict(my.data = df, linker = linker, 
                   option_description = option_desc,
                   prompt_varopts = FALSE)

# If you want to export this dictionary:
# write.csv(dict, file = here::here("outputs","data_dictionary.csv"))
