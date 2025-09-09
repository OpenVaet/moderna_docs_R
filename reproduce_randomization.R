library(haven)
library(dplyr)

file_path <- 'xpt_data/FDA-CBER-2022-1614-1036150-1162722_125752_S3_M5_mrna-1273-p301_A_D_adar.xpt'

# Reads the XPT file
data <- read_xpt(file_path)
print(data, n=10)

# Renders unique data : ARM
arm_unique <- data %>%
  select(ARM) %>%
  distinct()
print(arm_unique)

# Renders unique data : COUNTRY
country_unique <- data %>%
  select(COUNTRY) %>%
  distinct()
print(country_unique)

# Renders unique data : SUBJID
country_subjid <- data %>%
  select(SUBJID) %>%
  distinct()
print(country_subjid)

# Renders unique data : SITEID
country_siteid <- data %>%
  select(SITEID) %>%
  distinct()
print(country_siteid)

  