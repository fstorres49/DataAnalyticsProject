# Packages
install.packages("dplyr")
install.packages("readxl")
install.packages("writexl")
install.packages("tidyverse")
library(dplyr)
library(writexl)
library(readxl)
library(tidyverse)


Intervals_median_home_prices_2021_df <-
  read_excel(
    "Path where the Excel file is stored/2021-q2-county-median-home-prices-and-mortgage-payments-by-state-10-07-2021_1.xlsx"
  )
Intervals_median_home_prices_2021_df 

# Adding row numbers
Intervals_median_home_prices_2021_df <-
  Intervals_median_home_prices_2021_df %>% mutate(row_num = row_number())
Intervals_median_home_prices_2021_df

# Creating intervals for avg salaries

Intervals_median_home_prices_2021_df <-
  Intervals_median_home_prices_2021_df %>% group_by(row_num) %>% mutate(
    Home_prices_intervals = if (Median_home_price_Q2_2021 < 150000) { "Less than $150,000" }
    else if(Median_home_price_Q2_2021 < 350000) { "$150,000 - $350,000" }
    else if(Median_home_price_Q2_2021 < 550000) { "$350,000 - $550,000" }
    else if(Median_home_price_Q2_2021 < 750000) { "$550,000 - $750,000" }
    else if(Median_home_price_Q2_2021 < 1000000) { "$750,000 - $1,000,000" }
    else {"$1,000,000 and more"}
  )

Intervals_median_home_prices_2021_df 

# Getting % of salaries

Intervals_median_home_prices_2021_df_1 <-
  Intervals_median_home_prices_2021_df %>% group_by(Home_prices_intervals) %>% count()

Intervals_median_home_prices_2021_df_1

Intervals_median_home_prices_2021_df_totalPerc <-
  Intervals_median_home_prices_2021_df_1 %>% mutate(Percentage_total=n/3076)

Intervals_median_home_prices_2021_df_totalPerc

# Exporting to summary of intervals.
write_xlsx(Intervals_median_home_prices_2021_df_totalPerc,"Path where you want to store the Excel file/intervals_median_home_prices.xlsx")

# Exporting df with intervals 
write_xlsx(Intervals_median_home_prices_2021_df, "Path where you want to store the Excel file/df_median_come_prices_interval_2021.xlsx")

