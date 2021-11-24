# Packages
install.packages("dplyr")
install.packages("readxl")
install.packages("writexl")
install.packages("tidyverse")
library(dplyr)
library(writexl)
library(readxl)
library(tidyverse)


Intervals_mortgage_payment_2021_df <-
  read_excel(
    "Path where the Excel file is stored/2021-q2-county-median-home-prices-and-mortgage-payments-by-state-10-07-2021.xlsx"
  )
Intervals_mortgage_payment_2021_df 

# Adding row numbers
Intervals_mortgage_payment_2021_df  <-
  Intervals_mortgage_payment_2021_df %>% mutate(row_num = row_number())
Intervals_mortgage_payment_2021_df 

# Creating intervals for avg salaries

Intervals_mortgage_payment_2021_df <-
  Intervals_mortgage_payment_2021_df %>% group_by(row_num) %>% mutate(
    mortgage_Q2_intervals = if (Monthly_payment_Q2_2021 < 500) { "Less than $500" }
    else if(Monthly_payment_Q2_2021 < 1000) { "$500 - $1,000" }
    else if(Monthly_payment_Q2_2021 < 1500) { "$1,000 - $1,500" }
    else {"$1,500 - $4,660"}
  )

Intervals_mortgage_payment_2021_df 

# Getting % of salaries

Intervals_mortgage_payment_2021_df_1 <-
  Intervals_mortgage_payment_2021_df %>% group_by(mortgage_Q2_intervals) %>% count()

Intervals_mortgage_payment_2021_df_1

Intervals_mortgage_payment_2021_df_totalPerc <-
  Intervals_mortgage_payment_2021_df_1 %>% mutate(Percentage_total=n/3076)

Intervals_mortgage_payment_2021_df_totalPerc

# Exporting to summary of intervals.
write_xlsx(Intervals_mortgage_payment_2021_df_totalPerc, "Path where you want to store the Excel file/Intervls_mortgage_Q2_salaries_2021.xlsx")

# Exporting df with intervals 
write_xlsx(Intervals_mortgage_payment_2021_df, "Path where you want to store the Excel file/df_mortgage_Q2_interval_2021.xlsx")

