#Class Meeting 11
library(tidyverse)
library(gapminder)
library(here)

gapminder
  
write_csv(gapminder, "./gapminder.csv")

gapminder_summ <- gapminder %>%
  group_by(continent) %>%
  summarize(ave_lifeExp = mean(lifeExp))
write_csv(gapminder_summ, "./gapminder_sum.csv")

gapminder_summ %>%
  ggplot(aes(x = continent, y = ave_lifeExp)) +
    geom_point() +
    theme_bw()

#platform agnostic, directory structure agnostic:
gapminder_csv <- read_csv(here::here("gapminder_sum.csv"))
#can also create "here" object
set_here()

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
download.file(url = data_url, destfile = here::here("RichestParasites.xls"))

#Recommendation: Use basename()
#file_name <- basename(data_url) 
#BUT I RENAMED IT SO...
file_name <- "RichestParasites.xls"

library(readxl)

parasites <- read_excel(here::here(file_name), trim_ws=T)

#Cleaning Data
mri_file <- here("Firas-MRI.xlsx")
mri <- read_excel(mri_file, range = "A1:L12") %>%
  select(-'Weighted Average') %>%
  pivot_longer(cols = 'Slice 1':'Slice 8',
               names_to = 'slice_num',
               values_to = 'value')

