base_url = "http://www2.stat.duke.edu/~cr173/dennys/locations.dennys.com/"

dir.create("data/dennys/",showWarnings = FALSE, recursive = TRUE)

page_url = paste0(base_url,"AL/BIRMINGHAM/248621.html")
download.file(page_url, destfile = paste0("data/dennys/",basename(page_url)), quiet = TRUE)