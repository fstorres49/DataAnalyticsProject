# Packages
install.packages("dplyr")
install.packages("readxl")
install.packages("writexl")
install.packages("tidyverse")
library(dplyr)
library(writexl)
library(readxl)
library(tidyverse)


Intervals_avg_salaries_2021_df <-
  read_excel(
    "Path where the Excel file is stored/coun_Avg_salaries_2021.xlsx"
  )
Intervals_avg_salaries_2021_df 
# Creating intervals for avg salaries

Intervals_avg_salaries_2021_df <-
  Intervals_avg_salaries_2021_df %>% group_by(Row_num) %>% mutate(
    Salary_intervals = if (X2021_Estimate < 40000) { "Less than $40,000" }
    else if(X2021_Estimate < 50000) { "$40,000 - $50,000" }
    else if(X2021_Estimate < 60000) { "$50,000 - $60,000" }
    else {"$60,000 - $141,500"}
  )

Intervals_avg_salaries_2021_df 

# Getting % of salaries

Intervals_avg_salaries_2021_df_1 <-
  Intervals_avg_salaries_2021_df %>% group_by(Salary_intervals) %>% count()

Intervals_avg_salaries_2021_df_1

Intervals_avg_salaries_2021_df_totalPerc <-
  Intervals_avg_salaries_2021_df_1 %>% mutate(Percentage_total=n/3076)

Intervals_avg_salaries_2021_df_totalPerc

# Exporting to summary of intervals.
write_xlsx(Intervals_avg_salaries_2021_df_totalPerc,"Path where you want to store the Excel file/Intervls_coun_Avg_salaries_2021.xlsx")

# Exporting df with intervals 
write_xlsx(Intervals_avg_salaries_2021_df, "Path where you want to store the Excel file/df_Avg_salaries_interval_2021.xlsx")

