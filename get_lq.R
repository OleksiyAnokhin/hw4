library(rvest)
library(magrittr)
library(stringr)

base_url = "http://www2.stat.duke.edu/~cr173/lq/www.lq.com/en/findandbook/"

page = read_html(paste0(base_url,"hotel-listings.html"))

hotels = page %>% 
  html_nodes("#hotelListing .col-sm-12 a[href]") %>%
  html_attr("href") %>% 
  { .[!str_detect(., "^http")] }


dir.create("data/lq/", showWarnings = FALSE, recursive = TRUE)

for(hotel in hotels)
{
  cat(hotel,'\n')
  download.file(
    url = paste0(base_url,hotel), 
    destfile = paste0("data/lq/", hotel),
    quiet = TRUE
  )
}

