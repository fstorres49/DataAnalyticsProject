# Packages
install.packages("dplyr")
install.packages("readxl")
install.packages("writexl")
install.packages("tidyverse")
library(dplyr)
library(writexl)
library(readxl)
library(tidyverse)

salaries_after_taxes <-
  read_excel(
    "Path where the Excel file is stored/Salaries_after_taxes.xlsx"
  )
monthly_mortgage <-
  read_excel(
    "Path where the Excel file is stored/df_mortgage_Q2_interval_2021.xlsx"
  )

# Adding Mortgage payment and row_num columns to salaries_after_taxes df
salaries_after_taxes$Monthly_payment_Q2_2021 <- monthly_mortgage$Monthly_payment_Q2_2021
salaries_after_taxes$row_num <- monthly_mortgage$row_num

# Caculating monthly mortgage payment as % of salaries after taxes
salaries_after_taxes <-
  salaries_after_taxes %>% 
  group_by(row_num) %>% 
  mutate(mortgage_as_perc_salary = Monthly_payment_Q2_2021 / as.numeric(MonthlyTakeHomeSal))

salaries_after_taxes

# Checking values > 0.8

salaries_after_taxes_0.8 <- salaries_after_taxes %>%
  filter(mortgage_as_perc_salary >0.8)
salaries_after_taxes_0.8 

# Checking values < 0.06
salaries_after_taxes_0.065 <- salaries_after_taxes %>%
  filter(mortgage_as_perc_salary <0.065)
salaries_after_taxes_0.065

# Filtering rows with NA in MonthlyTakeHomeSal column
salaries_after_taxes <-
  salaries_after_taxes %>% filter(MonthlyTakeHomeSal != "NA") %>% mutate(mortgage_as_perc_salary = mortgage_as_perc_salary*100)
salaries_after_taxes

# Mortgage as Percentage of Salary After Taxes  histogram
hist(salaries_after_taxes$mortgage_as_perc_salary,
          xlab = "Mortage as Percentage of Salary After Taxes",
          main = "Histogram of Mortage as Percentage of Salary After Taxes")

# Creating intervals for mortgage as % of salaries after taxes

Intervals_mortgage_perc_salary_2021_df <-
  salaries_after_taxes %>% group_by(row_num) %>% mutate(
    mortgage_perc_salary_intervals = if (mortgage_as_perc_salary < 25) { "Less than 25%" }
    else if(mortgage_as_perc_salary < 35) { "25% - 35%" }
    else if(mortgage_as_perc_salary < 45) { "35% - 45%" }
    else if(mortgage_as_perc_salary < 60) { "45% - 60%" }
    else {"60% - 122%"}
  )

Intervals_mortgage_perc_salary_2021_df

# Getting %

Intervals_mortgage_perc_salary_2021_df_1 <-
  Intervals_mortgage_perc_salary_2021_df %>% group_by(mortgage_perc_salary_intervals) %>% count()

Intervals_mortgage_perc_salary_2021_df_1

Intervals_mortgage_perc_salary_2021_df_totalPerc <-
  Intervals_mortgage_perc_salary_2021_df_1%>% mutate(Percentage_total=n/3073)

Intervals_mortgage_perc_salary_2021_df_totalPerc

# Exporting to summary of intervals.
write_xlsx(Intervals_mortgage_perc_salary_2021_df_totalPerc, "Path where you want to store the Excel file/Intervls_mort_perc_salary_2021.xlsx")

# Exporting df with intervals 
write_xlsx(Intervals_mortgage_perc_salary_2021_df, "Path where you want to store the Excel file/df_mort_perc_salary_interval_2021.xlsx")

