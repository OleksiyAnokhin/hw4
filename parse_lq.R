files = dir("data/lq/", full.names = TRUE)

for(file in files)
{
  page = read_html(file)
}