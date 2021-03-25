library(tidyverse) 
library(readxl)

move <-
readxl::read_excel(
  "Data/doi_10.5061_dryad.2n8055g__v1 (2)/Jessop_data.xlsx", sheet = 1)

explore <-
readxl::read_excel(
  "Data/doi_10.5061_dryad.2n8055g__v1 (2)/Jessop_data.xlsx", sheet = 2)

markcapturedata <-
readxl::read_excel(
  "Data/doi_10.5061_dryad.2n8055g__v1 (2)/Jessop_data.xlsx", sheet = 3)

move
explore
markcapturedata


Movement <- ggplot(data = move, aes(x = daily_move, y = weight))

