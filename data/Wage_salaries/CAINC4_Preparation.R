# Packages
install.packages("dplyr")
install.packages("writexl")
library(dplyr)
library(writexl)

# Importing CAINC4 CSV
CAINC4_df <-
  read.csv(
    "Path where the CSV file is stored/CAINC4__ALL_AREAS_1969_2019.csv"
  )
CAINC4_df

# Filtering "Wage and Salaries" and "Wage and Salaries Employment" columns
CAINC4_salaries_df <-
  CAINC4_df %>% filter(LineCode %in% c("50", "7020"))
CAINC4_salaries_df

# Filtering rows with NA in X2019
CAINC4_salaries_df <-
  CAINC4_salaries_df %>% filter(X2019 != "(NA)")
CAINC4_salaries_df

# Selecting important columns for the research and adding row numbers
CAINC4_salaries_2010_2019_df <-
  CAINC4_salaries_df %>% select(c(
    "GeoName",
    "LineCode",
    "Description",
    "Unit",
    "X2010",
    "X2011",
    "X2012",
    "X2013",
    "X2014",
    "X2015",
    "X2016",
    "X2017",
    "X2018",
    "X2019"
  )) %>% mutate(row_num = row_number())
CAINC4_salaries_2010_2019_df
# Year as vector (predictor variable)
year <- c( 2010,
           2011,
           2012,
           2013,
           2014,
           2015,
           2016,
           2017,
           2018,
           2019)
# Extracting intercept of linear regression
CAINC4_salaries_2010_2021_df <-
  CAINC4_salaries_2010_2019_df %>% group_by(row_num) %>% mutate(
    X2021_intercept = min(lm(
      c(
        as.numeric(X2010),
        as.numeric(X2011),
        as.numeric(X2012),
        as.numeric(X2013),
        as.numeric(X2014),
        as.numeric(X2015),
        as.numeric(X2016),
        as.numeric(X2017),
        as.numeric(X2018),
        as.numeric(X2019)
      ) ~
        year
    )$coefficients[1])
  )
CAINC4_salaries_2010_2021_df

# Extracting beta of linear regression
CAINC4_salaries_2010_2021_df <-
  CAINC4_salaries_2010_2021_df %>% group_by(row_num) %>% mutate(
X2021_beta =
  min(lm(
    c(
      as.numeric(X2010),
      as.numeric(X2011),
      as.numeric(X2012),
      as.numeric(X2013),
      as.numeric(X2014),
      as.numeric(X2015),
      as.numeric(X2016),
      as.numeric(X2017),
      as.numeric(X2018),
      as.numeric(X2019)
    ) ~
      year
  )$coefficients[2]))

CAINC4_salaries_2010_2021_df

# Extracting R-squared
CAINC4_salaries_2010_2021_df <-
  CAINC4_salaries_2010_2021_df %>% group_by(row_num) %>% mutate(
    X2021_R_squared =
      summary(lm(
        c(
          as.numeric(X2010),
          as.numeric(X2011),
          as.numeric(X2012),
          as.numeric(X2013),
          as.numeric(X2014),
          as.numeric(X2015),
          as.numeric(X2016),
          as.numeric(X2017),
          as.numeric(X2018),
          as.numeric(X2019)
        ) ~
          year
      ))$r.squared)

CAINC4_salaries_2010_2021_df

#R squared histogram

hist(CAINC4_salaries_2010_2021_df$X2021_R_squared,
     xlab = "R_squared",
     main = "Histogram of R_squared for 2021")

# Estimating 2021
CAINC4_salaries_2010_2021_df <-
  CAINC4_salaries_2010_2021_df %>% group_by(row_num) %>% mutate(
    X2021_estimate = X2021_intercept + X2021_beta*2021)

CAINC4_salaries_2010_2021_df

# Calculating the average Wage and Salary for 2021
CAINC4_salaries_2010_2021_df <-
  CAINC4_salaries_2010_2021_df %>% group_by(GeoName) %>% mutate(X2021_avg_salary_thousand_dollars = X2021_estimate[1] /
                                                                  X2021_estimate[2])
CAINC4_salaries_2010_2021_df

# Average Wage and Salary for 2021 histogram

hist(CAINC4_salaries_2010_2021_df$X2021_avg_salary_thousand_dollars,
     xlab = "Avg. Salary",
     main = "Histogram of Average Salary Before Taxes by County (Thousands of dollars)")

# Extracting columns of interest and doing some modifications to continue with the research

CAINC4_estimate_avg_salaries_2021_df <-
  CAINC4_salaries_2010_2021_df %>% select(
    c(
      "GeoName",
      "LineCode",
      "Description",
      "Unit",
      "row_num",
      "X2021_avg_salary_thousand_dollars"
    )
  ) %>% filter(LineCode %in% c("50")) %>% mutate(
    Unit = "Dollars",
    X2021_estimate = X2021_avg_salary_thousand_dollars * 1000,
    Description = "Average wage and salaries"
  )

CAINC4_estimate_avg_salaries_2021_df <-
  CAINC4_estimate_avg_salaries_2021_df %>% select(c("GeoName", "Description", "Unit", "row_num", "X2021_estimate"))

CAINC4_estimate_avg_salaries_2021_df 


# Exporting to excel
write_xlsx(CAINC4_estimate_avg_salaries_2021_df ,"Path where you want to store the Excel file/CAINC4_estimate_avg_salaries_2021_df .xlsx")


# R_squared below 0.1
 Checking_r_squared_below_0.01 <- CAINC4_salaries_2010_2021_df %>% filter(X2021_R_squared <= 0.01)
 Checking_r_squared_below_0.01
# Checking the head
 head(Checking_r_squared_below_0.01, n=20)
# Checking the tail
 tail(Checking_r_squared_below_0.01, n=20)

